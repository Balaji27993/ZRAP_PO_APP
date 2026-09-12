@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO header Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity YC_PUR_ORD_HDR_A 
provider contract transactional_query as
 projection on YI_PUR_ORD_HD_A
{
  key PoUuid,
      PoId,
      Supplier,
      Vendor,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalAmount,
      CurrencyCode,
      OverallStatus,
      PoActive,
      PoOrg,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChanged,
      /* Associations */
      _Item : redirected to composition child YC_PUR_ORD_ITEM_A
}
