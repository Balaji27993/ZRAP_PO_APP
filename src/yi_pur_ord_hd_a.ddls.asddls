@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO header interfaceview'
@Metadata.ignorePropagatedAnnotations: true
define view entity YI_PUR_ORD_HD_A 
as select from zpur_ord_hdr_a
 composition[0..*] of YI_PUR_ORD_ITEM_A as _Item
{
  key po_id              as PoId,
  key po_uuid            as PoUuid,
      supplier           as Supplier,
      vendor             as Vendor,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_amount       as TotalAmount,
      currency_code      as CurrencyCode,
      overall_status     as OverallStatus,
      po_active          as PoActive,
      po_org             as PoOrg,
      @Semantics.user.createdBy: true
      created_by         as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at         as CreatedAt,
      @Semantics.user. localInstanceLastChangedBy: true
      last_changed_by    as LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at    as LastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed as LocalLastChanged,
      
    _Item
}
