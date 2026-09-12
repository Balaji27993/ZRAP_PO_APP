CLASS lhc_YI_PUR_ORD_HD_A DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      keys REQUEST requested_features FOR yi_pur_ord_hd_a RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR yi_pur_ord_hd_a RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR yi_pur_ord_hd_a RESULT result.

    METHODS earlynumbering_create FOR NUMBERING
       entities FOR CREATE yi_pur_ord_hd_a.

    METHODS earlynumbering_cba_Item FOR NUMBERING
       entities FOR CREATE yi_pur_ord_hd_a\_Item.

ENDCLASS.

CLASS lhc_YI_PUR_ORD_HD_A IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_create.
  ENDMETHOD.

  METHOD earlynumbering_cba_Item.
  ENDMETHOD.

ENDCLASS.
