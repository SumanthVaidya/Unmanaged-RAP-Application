@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer table Interface  cds view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CDS_view as select from zdbtable1
{
    key customerid as Customerid,
    firstname as Firstname,
    lastname as Lastname,
    title as Title,
    street as Street,
    postalcode as Postalcode,
    city as City,
    countrycode as Countrycode
     // Make association public
}
