xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/collectingAgent";
(:: import schema at "../Adapter/collectingAgent.xsd" ::)

declare variable $caCode as xs:string external;
declare variable $ciCode as xs:string external;

declare function local:func($caCode as xs:string, 
                            $ciCode as xs:string) 
                            as element() (:: schema-element(ns1:collectingAgentInput) ::) {
    <ns1:collectingAgentInput>
        <ns1:caCode>{fn:data($caCode)}</ns1:caCode>
        <ns1:ciCode>{fn:data($ciCode)}</ns1:ciCode>
    </ns1:collectingAgentInput>
};

local:func($caCode, $ciCode)