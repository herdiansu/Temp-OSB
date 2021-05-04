xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://common.middleware.com";
(:: import schema at "../Schemas/Auth.xsd" ::)

declare variable $token as xs:string external;

declare function local:func($token as xs:string) as element() (:: schema-element(ns1:responseMessage) ::) {
    <ns1:responseMessage>
        <ns1:token>{fn:data($token)}</ns1:token>
    </ns1:responseMessage>
};

local:func($token)