<?php

/**
 * Efetua consulta do número no sistema de portabilidade da OpenS.
 * É retornado o código da operadora.
 *
 * @see PBX_Rule
 * @see PBX_Rule_Action
 *
 * @category  Snep
 * @package   PBX_Rule_Action
 * @copyright Copyright (c) 2015 OpenS Tecnologia
 * @author    Tiago Zimmermann <tiago.zimmermann@opens.com.br>
 */
class PortabilityAction extends PBX_Rule_Action {

    /**
     * @var Internacionalização
     */
    private $i18n;
    private $destino;

    /**
     * Construtor
     * @param array $config configurações da ação
     */
    public function __construct() {
        $this->i18n = Zend_Registry::get("i18n");
    }

    /**
     * Retorna o nome da Ação. Geralmente o nome da classe.
     *
     * @return Nome da Ação
     */
    public function getName() {
        return $this->i18n->translate("Portability");
    }

    /**
     * Retorna o numero da versão da classe.
     *
     * @return Versão da classe
     */
    public function getVersion() {
        return "1.0";
    }

    /**
     * Retorna uma breve descrição de funcionamento da ação.
     * @return Descrição de funcionamento ou objetivo
     */
    public function getDesc() {
        return $this->i18n->translate("Envia o número a ser consultado");
    }

    /**
     * Devolve um XML com as configurações requeridas pela ação
     * @return String XML
     */
    public function getConfig() {

        $i18n = $this->i18n;

        $prefix = (isset($this->config['prefix']))?"<value>{$this->config['prefix']}</value>":"";
        $type = (isset($this->config['type']))?"<value>{$this->config['type']}</value>":"";

        return <<<XML
<params>
    <radio>
        <id>type</id>
        <label>{$i18n->translate("Tratamento de número inexistente")}</label>
        <default>audio</default>
        $type
        <option>
            <label>{$i18n->translate("Tocar áudio de aviso")}</label>
            <value>audio</value>
        </option>
        <option>
            <label>{$i18n->translate("Inserir prefixo para tratamento")}</label>
            <value>prefix</value>
        </option>
    </radio>
    <string>
        <id>prefix</id>
        <label>{$i18n->translate("Prefixo para tratamento de números inexistentes")}</label>
        <description>O valor deve possuir 5 dígitos. Deverá ser criada uma nova regra para tratamento do prefixo informado.</description>
        <size>5</size>
        $prefix
    </string>

</params>
XML;
    }

    /**
     * Executa a ação.
     * @param Asterisk_AGI $asterisk
     * @param PBX_Asterisk_AGI_Request $request
     */
    public function execute($asterisk, $request) {

        $log = Zend_Registry::get('log');

        $configuration = Snep_Register_Manager::get();
        if(!$configuration){
            $log->info("To use this service you must register your Snep");
        }

        $url = "https://api.opens.com.br/api/v1/portability/consult";
        $api_key = $configuration['api_key'];
        $client_key = $configuration['client_key'];
        $device_uuid = $configuration['uuid'];
        $this->destino = $request->destino;

        //config
        $type = $this->config['type'];
        $prefix = $this->config['prefix'];

        $service_url = $url."?client_key=".$client_key."&api_key=".$api_key."&number=".$this->destino."&device_uuid=".$device_uuid;

        $http = curl_init($service_url);

        curl_setopt($http, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($http, CURLOPT_TIMEOUT,3);
	      curl_setopt($http, CURLOPT_CONNECTTIMEOUT, 3);
        $status = curl_getinfo($http, CURLINFO_HTTP_CODE);

        curl_setopt($http, CURLOPT_RETURNTRANSFER,1);

        $http_response = curl_exec($http);
        $httpcode = curl_getinfo($http, CURLINFO_HTTP_CODE);

        curl_close($http);

        switch ($httpcode) {
            case 200:
                $log->info("Portabilidade -> Encontrado operadora -> ".$http_response);
                $asterisk->exec_goto('default',$http_response,1);
                break;
            case 401:
                $log->info("Portabilidade -> Consulta não autorizada");
                $asterisk->stream_file('portabilityError');
                $asterisk->hangup();
                break;
            case 402:
                $log->info("Portabilidade -> Central sem créditos disponíveis");
                $asterisk->stream_file('portabilityError');
                $asterisk->hangup();
                break;
            case 404:
                if($type == 'audio'){
                    $log->info("Portabilidade -> Número não encontrado na base da Portabilidade");
                    $asterisk->stream_file('portabilityError');
                    $asterisk->hangup();
                }else{
                    $rest = substr($http_response,0,5);
                    $number = substr($http_response,5);
                    $log->info("Portabilidade -> Número não encontrado -> ".$http_response);
                    $log->info("Portabilidade -> Rescrevendo número com valor do prefixo informado na ação -> ".$prefix.$number);
                    $asterisk->exec_goto('default',$prefix.$number,1);
                }
                break;
            default:
                $log->info("Portabilidade -> Houve algum erro durante o processo");
                $asterisk->stream_file('portabilityError');
                $asterisk->hangup();
                break;
        }

    }
}
