CLASS lcl_data_buffer DEFINITION.
PUBLIC SECTION.
CLASS-DATA: gt_create type table of ZDBTABLE1,
            gt_update type table of ZDBTABLE1,
            gt_delete type table of ZDBTABLE1.
ENDCLASS.



CLASS lhc_ZI_CDS_view DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZI_CDS_view RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR ZI_CDS_view RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE ZI_CDS_view.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE ZI_CDS_view.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE ZI_CDS_view.

    METHODS read FOR READ
      IMPORTING keys FOR READ ZI_CDS_view RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK ZI_CDS_view.

ENDCLASS.

CLASS lhc_ZI_CDS_view IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD create.

* data(ls_entity) = entities.

  lcl_data_buffer=>gt_create = CORRESPONDING #( entities ).

  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_CDS_VIEW DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_CDS_VIEW IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.

  INSERT ZDBTABLE1 FROM table @lcl_data_buffer=>gt_create.

  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
