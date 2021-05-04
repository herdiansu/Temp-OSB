xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbAuth";
(:: import schema at "../Adapter/dbAuth_table.xsd" ::)

declare variable $ciCode as xs:string external;
declare variable $caCode as xs:string external;

declare function local:func($ciCode as xs:string, 
                            $caCode as xs:string) 
                            as element() (:: schema-element(ns1:dbAuthSelect_ciCode_caCodeInputParameters) ::) {
    <ns1:dbAuthSelect_clientId_clientNameInputParameters>
        <ns1:ciCode>{fn:data($ciCode)}</ns1:ciCode>
        <ns1:caCode>{fn:data($caCode)}</ns1:caCode>
    </ns1:dbAuthSelect_clientId_clientNameInputParameters>
};

local:func($ciCode, $caCode)