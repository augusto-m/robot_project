*** Settings ***

Resource    ../../resources/upload_requests.robot

Test Teardown    Run Keywords    Status Should Be      400
...              AND             Should Not Contain    ${response.json()}    fileId      
...              AND             Should Not Contain    ${response.json()}    uploadId


*** Test Cases ***

Initiate upload "ace_file"

	${response}    Initiate upload    ace_file


Initiate upload "ade_file"

	${response}    Initiate upload    ade_file    


Initiate upload "adp_file"

	${response}    Initiate upload    adp_file    


Initiate upload "app_file"

	${response}    Initiate upload    app_file    


Initiate upload "asp_file"

	${response}    Initiate upload    asp_file    


Initiate upload "aspx_file"

	${response}    Initiate upload    aspx_file    


Initiate upload "asx_file"

	${response}    Initiate upload    asx_file    


Initiate upload "bas_file"

	${response}    Initiate upload    bas_file    


Initiate upload "bat_file"

	${response}    Initiate upload    bat_file    


Initiate upload "bin_file"

	${response}    Initiate upload    bin_file    


Initiate upload "cer_file"

	${response}    Initiate upload    cer_file    


Initiate upload "chm_file"

	${response}    Initiate upload    chm_file    


Initiate upload "cla_file"

	${response}    Initiate upload    cla_file    


Initiate upload "class_file"

	${response}    Initiate upload    class_file 


Initiate upload "cmd_file"

	${response}    Initiate upload    cmd_file    


Initiate upload "cnt_file"

	${response}    Initiate upload    cnt_file    


Initiate upload "vsmacros_file"

	${response}    Initiate upload    vsmacros_file


Initiate upload "com_file"

	${response}    Initiate upload    com_file    


Initiate upload "cpl_file"

	${response}    Initiate upload    cpl_file    


Initiate upload "crt_file"

	${response}    Initiate upload    crt_file    


Initiate upload "csh_file"

	${response}    Initiate upload    csh_file    


Initiate upload "der_file"

	${response}    Initiate upload    der_file    


Initiate upload "docm_file"

	${response}    Initiate upload    docm_file


Initiate upload "exe_file"

	${response}    Initiate upload    exe_file  


Initiate upload "fxp_file"

	${response}    Initiate upload    fxp_file    


Initiate upload "gad_file"

	${response}    Initiate upload    gad_file    


Initiate upload "gadget_file"

	${response}    Initiate upload    gadget_file


Initiate upload "get_file"

	${response}    Initiate upload    get_file    


Initiate upload "grp_file"

	${response}    Initiate upload    grp_file    


Initiate upload "hlp_file"

	${response}    Initiate upload    hlp_file    


Initiate upload "hpj_file"

	${response}    Initiate upload    hpj_file    


Initiate upload "hta_file"

	${response}    Initiate upload    hta_file    


Initiate upload "htc_file"

	${response}    Initiate upload    htc_file    


Initiate upload "inf_file"

	${response}    Initiate upload    inf_file    


Initiate upload "ins_file"

	${response}    Initiate upload    ins_file    


Initiate upload "iso_file"

	${response}    Initiate upload    iso_file    


Initiate upload "isp_file"

	${response}    Initiate upload    isp_file    


Initiate upload "its_file"

	${response}    Initiate upload    its_file    


Initiate upload "jar_file"

	${response}    Initiate upload    jar_file    


Initiate upload "js_file"

	${response}    Initiate upload    js_file    


Initiate upload "jse_file"

	${response}    Initiate upload    jse_file    


Initiate upload "ksh_file"

	${response}    Initiate upload    ksh_file    


Initiate upload "lnk_file"

	${response}    Initiate upload    lnk_file    


Initiate upload "mad_file"

	${response}    Initiate upload    mad_file    


Initiate upload "maf_file"

	${response}    Initiate upload    maf_file    


Initiate upload "mag_file"

	${response}    Initiate upload    mag_file    


Initiate upload "mam_file"

	${response}    Initiate upload    mam_file    


Initiate upload "maq_file"

	${response}    Initiate upload    maq_file    


Initiate upload "mar_file"

	${response}    Initiate upload    mar_file    


Initiate upload "mas_file"

	${response}    Initiate upload    mas_file    


Initiate upload "mat_file"

	${response}    Initiate upload    mat_file    


Initiate upload "mau_file"

	${response}    Initiate upload    mau_file    


Initiate upload "mav_file"

	${response}    Initiate upload    mav_file    


Initiate upload "maw_file"

	${response}    Initiate upload    maw_file    


Initiate upload "mcf_file"

	${response}    Initiate upload    mcf_file    


Initiate upload "mda_file"

	${response}    Initiate upload    mda_file    


Initiate upload "mdb_file"

	${response}    Initiate upload    mdb_file    


Initiate upload "mde_file"

	${response}    Initiate upload    mde_file    


Initiate upload "mdt_file"

	${response}    Initiate upload    mdt_file    


Initiate upload "mdw_file"

	${response}    Initiate upload    mdw_file    


Initiate upload "mdz_file"

	${response}    Initiate upload    mdz_file    


Initiate upload "mht_file"

	${response}    Initiate upload    mht_file    


Initiate upload "mhtml_file"

	${response}    Initiate upload    mhtml_file 


Initiate upload "msc_file"

	${response}    Initiate upload    msc_file    


Initiate upload "msh_file"

	${response}    Initiate upload    msh_file    


Initiate upload "msh1_file"

	${response}    Initiate upload    msh1_file    


Initiate upload "msh2_file"

	${response}    Initiate upload    msh2_file    


Initiate upload "msi_file"

	${response}    Initiate upload    msi_file    


Initiate upload "msp_file"

	${response}    Initiate upload    msp_file    


Initiate upload "mst_file"

	${response}    Initiate upload    mst_file    


Initiate upload "ocx_file"

	${response}    Initiate upload    ocx_file    


Initiate upload "ops_file"

	${response}    Initiate upload    ops_file    


Initiate upload "osd_file"

	${response}    Initiate upload    osd_file    


Initiate upload "pcd_file"

	${response}    Initiate upload    pcd_file    


Initiate upload "pif_file"

	${response}    Initiate upload    pif_file    


Initiate upload "pl_file"

	${response}    Initiate upload    pl_file    


Initiate upload "plg_file"

	${response}    Initiate upload    plg_file    


Initiate upload "prf_file"

	${response}    Initiate upload    prf_file    


Initiate upload "prg_file"

	${response}    Initiate upload    prg_file    


Initiate upload "ps1_file"

	${response}    Initiate upload    ps1_file    


Initiate upload "ps2_file"

	${response}    Initiate upload    ps2_file    


Initiate upload "psc1_file"

	${response}    Initiate upload    psc1_file    


Initiate upload "psc2_file"

	${response}    Initiate upload    psc2_file    


Initiate upload "pst_file"

	${response}    Initiate upload    pst_file    


Initiate upload "reg_file"

	${response}    Initiate upload    reg_file    


Initiate upload "ruby_file"

	${response}    Initiate upload    ruby_file 


Initiate upload "run_file"

	${response}    Initiate upload    run_file    


Initiate upload "scf_file"

	${response}    Initiate upload    scf_file    


Initiate upload "scr_file"

	${response}    Initiate upload    scr_file    


Initiate upload "sh_file"

	${response}    Initiate upload    sh_file    


Initiate upload "shb_file"

	${response}    Initiate upload    shb_file    


Initiate upload "shs_file"

	${response}    Initiate upload    shs_file    


Initiate upload "url_file"

	${response}    Initiate upload    url_file    


Initiate upload "vb_file"

	${response}    Initiate upload    vb_file    


Initiate upload "vbe_file"

	${response}    Initiate upload    vbe_file    


Initiate upload "vbp_file"

	${response}    Initiate upload    vbp_file    


Initiate upload "vbs_file"

	${response}    Initiate upload    vbs_file    


Initiate upload "vss_file"

	${response}    Initiate upload    vss_file    


Initiate upload "vst_file"

	${response}    Initiate upload    vst_file    


Initiate upload "vsw_file"

	${response}    Initiate upload    vsw_file    


Initiate upload "ws_file"

	${response}    Initiate upload    ws_file    


Initiate upload "wsc_file"

	${response}    Initiate upload    wsc_file    


Initiate upload "wsf_file"

	${response}    Initiate upload    wsf_file    


Initiate upload "wsh_file"

	${response}    Initiate upload    wsh_file    


Initiate upload "xba_file"

	${response}    Initiate upload    xba_file    


Initiate upload "xnk_file"

	${response}    Initiate upload    xnk_file    


py_file"

	${response}    Initiate upload    py_file 






