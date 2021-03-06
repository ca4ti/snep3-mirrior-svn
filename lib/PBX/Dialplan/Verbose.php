<?php

/**
 *  This file is part of SNEP.
 *
 *  SNEP is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as
 *  published by the Free Software Foundation, either version 3 of
 *  the License, or (at your option) any later version.
 *
 *  SNEP is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with SNEP.  If not, see <http://www.gnu.org/licenses/lgpl.txt>.
 */

/**
 * Dialplan verbose.
 *
 * Mesma coisa que PBX_Dialplan mas fornece várias informações sobre o processo
 * de parsing. Faz a análise de todas as regras e não somente a primeira regra
 * válida encontrada
 *
 * obs. Pode-se usar essa classe ao invés de PBX_Dialplan, elas são inteiramente
 * compativeis em resultados. Mas isso só é recomendado quando se precisa dos
 * dados adicionais. Apesar de muito pouco essa classe pode representar uma queda
 * no desempenho geral da aplicação.
 *
 * @category  Snep
 * @package   Snep
 * @copyright Copyright (c) 2010 OpenS Tecnologia
 * @author Henrique Grolli Bassotto
 */
class PBX_Dialplan_Verbose extends PBX_Dialplan {

    /**
     * Tempo em que a regra será executada.
     * É usado para definir manualmente o horário de execução do Parsing.
     * Útil para debug.
     * @var <string> Time
     */
    protected $execution_time;

    /**
     * Dia em que a regra será executada.
     * É usado para definir manualmente o dia de execução do Parsing.
     * Útil para debug.
     * @var <string> Date
     */
    protected $execution_date;

    /**
     * Array com todas as regras que casam com a requisição.
     *
     * Nota: São armazenadas nessa lista também as regras que casam mas não tem
     * o horário condizente com a execução da regra. Essa informação é mantida
     * para fim de debug.
     *
     * Obs. Não é necessário que seja armazenado a razão para descarte de uma
     * regra já que a lista segue um estrutura simples e clara.
     * Supondo que as seguintes regras foram encontradas.
     *
     *  Regra 1
     * *Regra 2
     *  Regra 3
     *
     * E que a regra 2 seja a regra que será executada, a ordem do array deixa
     * claro que a única forma de a Regra 1 ter sido descartada é por conta de
     * seu horário de válidade não correspondeR com o da execução da regra.
     * Já a Regra 3 foi descartada por uma regra prévia ja ter sido encontrada
     * (descartada por prioridade).
     *
     * @var array Regra
     */
    protected $matches;

    /**
     * getLastExecutionTime - Retorna o horário de execução do ultimo parse
     * @return <string> time
     */
    public function getLastExecutionTime() {
        return $this->execution_time;
    }

    /**
     * getMAtches - Retorna a lista de regras que foram encontradas para
     * a requisição do ultimo parse.
     * @return <array> matches
     */
    public function getMatches() {
        return $this->matches;
    }

    /**
     * parse - Sobreescreve PBX_Dialplan::parse() fazendo uma análise mais
     * detalhada de cada regra de negócio.
     */
    public function parse() {

        if (!isset($this->execution_time)) {
            $this->execution_time = date("H:i");
        }

        if (!isset($this->execution_date)) {
            $this->execution_date = null;
        }

        $this->foundRule = null;
        $this->matches = array();

        $rules = PBX_Rules::getAll();

        if (count($rules) > 0) {
            foreach ($rules as $rule) {

                $rule->setRequest($this->request);

                if ($rule->isValidDst($this->request->destino) && $rule->isValidSrc($this->request->origem)) {
                    // Armazenando a regra válida (parcialmente)
                    $this->matches[] = $rule;

                    // Caso seja a primeira regra válida (e com tempo válido), ela é a que queremos executar
                    if (is_null($this->foundRule) && ($rule->isValidTime($this->execution_time,$this->execution_day) && $rule->isValidAliasTime($this->execution_time,$this->execution_date)) && $rule->isActive()) {
                        $this->foundRule = $rule;
                    }
                }
            }

            if (!is_object($this->foundRule) && count($this->matches) < 1) { // Caso nenhuma regra tenha sido encontrada
                throw new PBX_Exception_NotFound("No rule found for this request");
            }
        } else {
            throw new PBX_Exception_NotFound("No rules in database");
        }
    }

    /**
     * getLastRule - Retorna a regra que casou no ultimo parse executado
     * @return PBX_Rule
     */
    public function getLastRule() {
        return $this->foundRule;
    }

    /**
     * setTime - Define manualmente o tempo que será usado em consideração
     * na avaliação da regra. (Execution time)
     * @param <string> $time Tempo de execução da regra
     */
    public function setTime($time) {
        $this->execution_time = $time;
    }

    /**
     * setDay - Define manualmente o dia que será usado em consideração
     * na avaliação da regra. (Execution date)
     * @param <string> $date Dia de execução da regra
     */
    public function setDay($date) {
        $this->execution_day = $date;
    }

    /**
     * setDate - Define manualmente a data que será usado em consideração
     * na avaliação da regra. (Execution date)
     * @param <string> $date Dia de execução da regra
     */
    public function setDate($date) {
        $this->execution_date = $date;
    }

}
