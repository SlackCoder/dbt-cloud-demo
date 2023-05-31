<<<<<<< HEAD


=======
>>>>>>> e8ed0d42e223431fba3bb5b933107a79cd84f19a
with source as (

    select * from {{ source('SAP_HANA', 'MATERIAL') }}

),

renamed as (

    select
        source_system,
        material_number,
        material_number_trimmed,
        n03_mat_number,
        n04_mat_number,
        material_name,
        barcode,
        deletion_flag,
        base_uom,
        base_uom_desc,
        order_uom,
        order_uom_desc,
        sales_uom,
        sales_uom_desc,
        dist_uom,
        dist_uom_desc,
        gross_wt,
        gross_wt_uom,
        gross_wt_uom_desc,
        active_ingr,
        active_ingredient_desc,
        mc1,
        mc1_desc,
        mc2,
        mc2_desc,
        mc3,
        mc3_desc,
        mc4,
        mc4_desc,
        bmc,
        bmc_desc,
        material_grp,
        material_grp_desc,
        l1_material,
        l1_material_desc,
        l2_material,
        l2_material_desc,
        l3_material,
        l3_material_desc,
        prod_hie_cde_rhl,
        xsite_status,
        xsite_status_desc,
        gen_item_cat_grp,
        gen_item_cat_grp_desc,
        rnet_flag,
        water_restr_flag,
        n03_mat_name,
        dg_ind,
        dg_ind_desc,
        dg_transp_flag,
        haz_goods_flag,
        dg_class_code,
        dg_class_desc,
        dg_subclass_code,
        oral_tox_ld50,
        oral_tox_ld50_uom,
        derm_tox_ld50,
        derm_tox_ld50_uom,
        inhal_tox_lc50,
        inhal_tox_lc50_uom,
        hazchem_code,
        packng_grp,
        schedule_poison,
        id_number_type,
        id_number,
        phase_key,
        proper_shppng_name,
        un_tech_name,
        valid_from_date,
        valid_to_date,
        cylinder_vol,
        cylinder_vol_uom,
        dg_reg,
        flash_point,
        material_name_90_char,
        basic_uom,
        basic_uom_desc,
        update_time

    from source

)

select * from renamed
