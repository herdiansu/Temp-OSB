xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://middleware.pgn.co.id/paymentgw/resinquiry";
(:: import schema at "../Schemas/resInquiry.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/getInvoice";
(:: import schema at "../Adapter/getInvoice.xsd" ::)

declare variable $inp as element() (:: schema-element(ns1:getInvoiceOutputCollection) ::) external;
declare variable $sessionId as xs:string external;

declare function local:func($inp as element() (:: schema-element(ns1:getInvoiceOutputCollection) ::), $sessionId as xs:string) as element() (:: schema-element(ns2:data) ::) {
    <ns2:data>
        <ns2:SESSION_ID>{fn:data($sessionId)}</ns2:SESSION_ID>
        <ns2:CUST_NUMBER>{fn:data($inp/ns1:getInvoiceOutput/ns1:CUST_NUMBER)}</ns2:CUST_NUMBER>
        <ns2:CUST_NAME>{fn:data($inp/ns1:getInvoiceOutput/ns1:CUST_NAME)}</ns2:CUST_NAME>
        <ns2:BILL_AMOUNT>{fn:data($inp/ns1:getInvoiceOutput/ns1:BILL_AMOUNT)}</ns2:BILL_AMOUNT>
        <ns2:CURRENCY>{fn:data($inp/ns1:getInvoiceOutput/ns1:CURRENCY)}</ns2:CURRENCY>
        <ns2:USAGE>{fn:data($inp/ns1:getInvoiceOutput/ns1:USAGE)}</ns2:USAGE>
        <ns2:CUST_TYPE>{fn:data($inp/ns1:getInvoiceOutput/ns1:CUST_TYPE)}</ns2:CUST_TYPE>
        <ns2:TOTAL_BILL_PERIOD>{fn:data($inp/ns1:getInvoiceOutput/ns1:TOTAL_BILL_PERIOD)}</ns2:TOTAL_BILL_PERIOD>
        <ns2:BILL_PERIOD>{fn:data($inp/ns1:getInvoiceOutput/ns1:BILL_PERIOD)}</ns2:BILL_PERIOD>
        <ns2:BILL_CYCLE>{fn:data($inp/ns1:getInvoiceOutput/ns1:BILL_CYCLE)}</ns2:BILL_CYCLE>
        <ns2:BILL_REFERENCE>{fn:data($inp/ns1:getInvoiceOutput/ns1:BILL_REFERENCE)}</ns2:BILL_REFERENCE>
        <ns2:STAND_BEGIN>{fn:data($inp/ns1:getInvoiceOutput/ns1:STAND_BEGIN)}</ns2:STAND_BEGIN>
        <ns2:STAND_END>{fn:data($inp/ns1:getInvoiceOutput/ns1:STAND_END)}</ns2:STAND_END>
        <ns2:PAY_STATUS>{fn:data($inp/ns1:getInvoiceOutput/ns1:PAY_STATUS)}</ns2:PAY_STATUS>
    </ns2:data>
};

local:func($inp, $sessionId)