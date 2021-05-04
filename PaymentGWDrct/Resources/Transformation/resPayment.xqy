xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://middleware.pgn.co.id/paymentgw/resPayment";
(:: import schema at "../Schemas/resPayment.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/selectPayment";
(:: import schema at "../Adapter/selectPayment.xsd" ::)

declare variable $inp as element() (:: schema-element(ns1:selectPaymentOutputCollection) ::) external;

declare function local:func($inp as element() (:: schema-element(ns1:selectPaymentOutputCollection) ::)) as element() (:: schema-element(ns2:response) ::) {

<ns2:response>
       <ns2:responseCode>200</ns2:responseCode>
       <ns2:responseMessage>SUCCESS</ns2:responseMessage>
       <ns2:data>
            <ns2:NO_PELANGGAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:CUST_NUMBER)}</ns2:NO_PELANGGAN>
            <ns2:NAMA_PELANGGAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:CUST_NAME)}</ns2:NAMA_PELANGGAN>
            <ns2:NILAI_TAGIHAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:BILL_AMOUNT)}</ns2:NILAI_TAGIHAN>
            <ns2:MATA_UANG>{fn:data($inp/ns1:selectPaymentOutput/ns1:CURRENCY)}</ns2:MATA_UANG>
            <ns2:VOLUME_PEMAKAIAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:USAGE)}</ns2:VOLUME_PEMAKAIAN>
            <ns2:JENIS_PELANGGAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:CUST_TYPE)}</ns2:JENIS_PELANGGAN>
            <ns2:JUMLAH_BULAN_TAGIHAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:TOTAL_BILL_PERIOD)}</ns2:JUMLAH_BULAN_TAGIHAN>
            <ns2:BULAN_TAGIHAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:BILL_PERIOD)}</ns2:BULAN_TAGIHAN>
            <ns2:BILLING_CYCLE>{fn:data($inp/ns1:selectPaymentOutput/ns1:BILL_CYCLE)}</ns2:BILLING_CYCLE>
            <ns2:BILL_REFERENCE>{fn:data($inp/ns1:selectPaymentOutput/ns1:BILL_REFERENCE)}</ns2:BILL_REFERENCE>
            <ns2:STATUS_PROSES>{fn:data($inp/ns1:selectPaymentOutput/ns1:PROCESS_STATUS)}</ns2:STATUS_PROSES>
            <ns2:TANGGAL_PROSES>{fn:data($inp/ns1:selectPaymentOutput/ns1:PROCESS_DATE)}</ns2:TANGGAL_PROSES>
            <ns2:NILAI_PEMBAYARAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:PAID_AMOUNT)}</ns2:NILAI_PEMBAYARAN>
            <ns2:NO_RESI>{fn:data($inp/ns1:selectPaymentOutput/ns1:RECEIPT_NUMBER)}</ns2:NO_RESI>
            <ns2:STAN>{fn:data($inp/ns1:selectPaymentOutput/ns1:STAN)}</ns2:STAN>
            <ns2:TRANS_DATE>{fn:data($inp/ns1:selectPaymentOutput/ns1:TRANS_DATE)}</ns2:TRANS_DATE>
            <ns2:CA_CODE>{fn:data($inp/ns1:selectPaymentOutput/ns1:CA_CODE)}</ns2:CA_CODE>
            <ns2:CHANNEL_ID>{fn:data($inp/ns1:selectPaymentOutput/ns1:CI_CODE)}</ns2:CHANNEL_ID>
            <ns2:TERMINAL_ID>{fn:data($inp/ns1:selectPaymentOutput/ns1:TERMINAL_ID)}</ns2:TERMINAL_ID>
            <ns2:UPDATED_DATE>{fn:data($inp/ns1:selectPaymentOutput/ns1:UPDATED_DATE)}</ns2:UPDATED_DATE>
            <ns2:STAND_AWAL>{fn:data($inp/ns1:selectPaymentOutput/ns1:STAND_BEGIN)}</ns2:STAND_AWAL>
            <ns2:STAND_AKHIR>{fn:data($inp/ns1:selectPaymentOutput/ns1:STAND_END)}</ns2:STAND_AKHIR>
           <ns2:SESSION_ID>{fn:data($inp/ns1:selectPaymentOutput/ns1:SESSION_ID)}</ns2:SESSION_ID>
           <ns2:PAY_STATUS>{fn:data($inp/ns1:selectPaymentOutput/ns1:PAY_STATUS)}</ns2:PAY_STATUS>
        </ns2:data>
</ns2:response>
        
};

local:func($inp)