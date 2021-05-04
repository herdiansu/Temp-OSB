xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://middleware.pgn.co.id/paymentGW/sendinquiry";
(:: import schema at "../Schemas/sendMessage.xsd" ::)

declare variable $signature as xs:string external;
declare variable $payload as xs:string external;

declare function local:func(
                            
                            
                            $signature as xs:string, 
                            $payload as xs:string) 
                            as element() (:: schema-element(ns1:Root-Element) ::) {
    <ns1:Root-Element>
       
        <ns1:signature>{fn:data($signature)}</ns1:signature>
        <ns1:payload>{fn:data($payload)}</ns1:payload>
    </ns1:Root-Element>
};

local:func( $signature, $payload)