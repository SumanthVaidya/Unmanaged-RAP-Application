@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZP_cds_View
  provider contract transactional_query as projection on ZI_CDS_view
{
    key Customerid,
    Firstname,
    Lastname,
    Title,
    Street,
    Postalcode,
    City,
    Countrycode
}
