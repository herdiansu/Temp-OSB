xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/Logging";
(:: import schema at "../Adapter/Logging.xsd" ::)

declare variable $createdDate as xs:date external;
declare variable $createBy as xs:string external;
declare variable $category as xs:string external;
declare variable $message as xs:string external;
declare variable $sessionId as xs:string external;

declare function local:func($createdDate as xs:date, 
                            $createBy as xs:string, 
                            $category as xs:string, 
                            $message as xs:string, 
                            $sessionId as xs:string) 
                            as element() (:: schema-element(ns1:LoggingInput) ::) {
    <ns1:LoggingInput>
        <ns1:cDate>{fn:data($createdDate)}</ns1:cDate>
        <ns1:cBy>{fn:data($createBy)}</ns1:cBy>
        <ns1:category>{fn:data($category)}</ns1:category>
        <ns1:message>{fn:data($message)}</ns1:message>
        <ns1:sessionId>{fn:data($sessionId)}</ns1:sessionId>
    </ns1:LoggingInput>
};

local:func($createdDate, $createBy, $category, $message, $sessionId)