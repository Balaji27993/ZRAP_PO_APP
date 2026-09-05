@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Item interface view'
@Metadata.ignorePropagatedAnnotations: true
define view entity YI_PUR_ORD_ITEM_A 
 as select from zpur_ord_itm_a
  association to parent YI_PUR_ORD_HD_A as _Header 
             on $projection.PoUuid = _Header.PoUuid
            and $projection.PoId = _Header.PoId
  {
  key po_uuid           as PoUuid,
  key po_item           as PoItem,
      po_id              as PoId,
      material          as Material,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      quentity          as Quentity,
      unit_of_measure   as UnitOfMeasure,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      line_amount       as LineAmount,
      currency_code     as CurrencyCode,
      item_status       as ItemStatus,
      line_free_change  as LineFreeChange,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_chnage as LocalLastChnage,
      
      _Header
}
