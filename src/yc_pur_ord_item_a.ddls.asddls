@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Item Projection view'
@Metadata.ignorePropagatedAnnotations: true
define view entity YC_PUR_ORD_ITEM_A as projection on YI_PUR_ORD_ITEM_A
{
  key PoItemUuid,
  key PoItem,
      PoId,
      Material,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Quentity,
      UnitOfMeasure,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      LineAmount,
      CurrencyCode,
      ItemStatus,
      LineFreeChange,
      LocalLastChnage,
      /* Associations */
      _Header : redirected to parent YC_PUR_ORD_HDR_A   
}
