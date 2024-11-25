*** Variables ***

### Data files default

&{image_1mb_1_1}    name=test_image_1mb_1.1.jpg    path=C:/test_files/image_1mb_1_1.jpg    part=1
&{image_2mb_1_1}    name=test_image_2mb_1.1.jpg    path=C:/test_files/image_2mb_1_1.jpg    part=2


### Data files - size

&{text_1kb}           name=test_text_1kb.txt           path=C:/test_files/size/text_1kb.txt             part=1
&{image_280kb}        name=test_image_280kb.jpg        path=C:/test_files/size/image_280kb.jpg          part=1
&{video_17mb}         name=test_video_17mb.mp4         path=C:/test_files/size/video_17mb.mp4           part=1
&{compressed_19mb}    name=test_compressed_19mb.rar    path=C:/test_files/size/compressed_19.9mb.rar    part=1
&{compressed_20mb}    name=test_compressed_20mb.rar    path=C:/test_files/size/compressed_20mb.rar      part=1
&{video_21mb}         name=test_video_21mb.mp4         path=C:/test_files/size/video_21mb.mp4           part=1
&{compressed_30mb}    name=test_compressed_30mb.rar    path=C:/test_files/size/compressed_30mb.rar      part=1


### Data files - extensions allowed more common

&{csv_file}                 name=csv_file.csv                 path=C:/test_files/extensions/csv_file.csv                 part=1
&{doc_file}                 name=doc_file.docx                path=C:/test_files/extensions/doc_file.doc                 part=1
&{docx_file}                name=docx_file.docx               path=C:/test_files/extensions/docx_file.docx               part=1
&{json_file}                name=json_file.json               path=C:/test_files/extensions/json_file.json               part=1
&{jpg_file}                 name=jpg_file.jpg                 path=C:/test_files/extensions/jpg_file.jpg                 part=1
&{jpeg_file}                name=jpeg_file.jpeg               path=C:/test_files/extensions/jpeg_file.jpeg               part=1
&{png_file}                 name=png_file.png                 path=C:/test_files/extensions/png_file.png                 part=1
&{mp3_file}                 name=mp3_file.mp3                 path=C:/test_files/extensions/mp3_file.mp3                 part=1
&{mp4_file}                 name=mp4_file.mp4                 path=C:/test_files/extensions/mp4_file.mp4                 part=1
&{pdf_file}                 name=pdf_file.pdf                 path=C:/test_files/extensions/pdf_file.pdf                 part=1
&{ppt_file}                 name=ppt_file.ppt                 path=C:/test_files/extensions/ppt_file.ppt                 part=1
&{pptx_file}                name=pptx_file.ppt                path=C:/test_files/extensions/pptx_file.pptx               part=1
&{xls_file}                 name=xls_file.xls                 path=C:/test_files/extensions/xls_file.xls                 part=1
&{xlsx_file}                name=xlsx_file.xls                path=C:/test_files/extensions/xlsx_file.xlsx               part=1
&{rar_file_rb_compacted}    name=rar_file_rb_compacted.rar    path=C:/test_files/extensions/rar_file_rb_compacted.rar    part=1
&{rar_file}                 name=rar_file.rar                 path=C:/test_files/extensions/rar_file.rar                 part=1
&{7z_file}                  name=7z_file.rar                  path=C:/test_files/extensions/7z_file.7z                   part=1
&{zip_file}                 name=zip_file.rar                 path=C:/test_files/extensions/zip_file.zip                 part=1
&{txt_file}                 name=txt_file.txt                 path=C:/test_files/extensions/txt_file.txt                 part=1


### Data files - extensions allowed not common

&{dot_file}                            name=dot_file.dot 
&{docpreword60_file}                   name=docpreword60_file.docpreword60                                  
&{docm_file}                           name=docm_file.docm                                                  
&{dotx_file}                           name=dotx_file.dotx                                                  
&{dotm_file}                           name=dotm_file.dotm                                                  
&{flatopc_file}                        name=flatopc_file.flatopc                                            
&{flatopcmacroenabled_file}            name=flatopcmacroenabled_file.flatopcmacroenabled                    
&{flatopctemplate_file}                name=flatopctemplate_file.flatopctemplate                            
&{flatopctemplatemacroenabled_file}    name=flatopctemplatemacroenabled_file.flatopctemplatemacroenabled
&{rtf_file}                            name=rtf_file.rtf                                                    
&{wordml_file}                         name=wordml_file.wordml                                              
&{html_file}                           name=html_file.html                                                  
&{mhtml_file}                          name=mhtml_file.mhtml                                                
&{mobi_file}                           name=mobi_file.mobi                                                  
&{odt_file}                            name=odt_file.odt                                                    
&{ott_file}                            name=ott_file.ott                                                    
&{md_file}                             name=md_file.md
&{excel97To2003_file}                  name=excel97To2003_file.excel97To2003
&{TSV_file}                            name=TSV_file.TSV
&{tabdelimited_file}                   name=tabdelimited_file.tabdelimited
&{html_file}                           name=html_file.html
&{MHtml_file}                          name=MHtml_file.MHtml
&{ods_file}                            name=ods_file.ods
&{spreadsheetML_file}                  name=spreadsheetML_file.spreadsheetML
&{xlsb_file}                           name=xlsb_file.xlsb
&{numbers_file}                        name=numbers_file.numbers
&{FODS_file}                           name=FODS_file.FODS
&{SXC_file}                            name=SXC_file.SXC
&{ppt_file}                            name=ppt_file.ppt
&{pps_file}                            name=pps_file.pps
&{pptx_file}                           name=pptx_file.pptx
&{ppsx_file}                           name=ppsx_file.ppsx
&{odp_file}                            name=odp_file.odp
&{potx_file}                           name=potx_file.potx
&{pptm_file}                           name=pptm_file.pptm
&{ppsm_file}                           name=ppsm_file.ppsm
&{potm_file}                           name=potm_file.potm
&{otp_file}                            name=otp_file.otp
&{ppt95_file}                          name=ppt95_file.ppt95
&{pot_file}                            name=pot_file.pot


### Data files - extensions not allowed

&{exe_file}         name=file.exe         path=C:/test_files/exe_file.exe    part=1
&{ruby_file}        name=file.rb          path=C:/test_files/ruby_file.rb    part=1 
&{ace_file}         name=file.ace
&{ade_file}         name=file.ade
&{adp_file}         name=file.adp
&{app_file}         name=file.app
&{asp_file}         name=file.asp
&{aspx_file}        name=file.aspx
&{asx_file}         name=file.asx
&{bas_file}         name=file.bas
&{bat_file}         name=file.bat
&{bin_file}         name=file.bin
&{cer_file}         name=file.cer
&{chm_file}         name=file.chm
&{cla_file}         name=file.cla
&{class_file}       name=file.class
&{cmd_file}         name=file.cmd
&{cnt_file}         name=file.cnt
&{vsmacros_file}    name=file.vsmacros
&{com_file}         name=file.com
&{cpl_file}         name=file.cpl
&{crt_file}         name=file.crt
&{csh_file}         name=file.csh
&{der_file}         name=file.der
&{docm_file}        name=file.docm
&{fxp_file}         name=file.fxp
&{gad_file}         name=file.gad
&{gadget_file}      name=file.gadget
&{get_file}         name=file.get
&{grp_file}         name=file.grp
&{hlp_file}         name=file.hlp
&{hpj_file}         name=file.hpj
&{hta_file}         name=file.hta
&{htc_file}         name=file.htc
&{inf_file}         name=file.inf
&{ins_file}         name=file.ins
&{iso_file}         name=file.iso
&{isp_file}         name=file.isp
&{its_file}         name=file.its
&{jar_file}         name=file.jar
&{js_file}          name=file.js
&{jse_file}         name=file.jse
&{ksh_file}         name=file.ksh
&{lnk_file}         name=file.lnk
&{mad_file}         name=file.mad
&{maf_file}         name=file.maf
&{mag_file}         name=file.mag
&{mam_file}         name=file.mam
&{maq_file}         name=file.maq
&{mar_file}         name=file.mar
&{mas_file}         name=file.mas
&{mat_file}         name=file.mat
&{mau_file}         name=file.mau
&{mav_file}         name=file.mav
&{maw_file}         name=file.maw
&{mcf_file}         name=file.mcf
&{mda_file}         name=file.mda
&{mdb_file}         name=file.mdb
&{mde_file}         name=file.mde
&{mdt_file}         name=file.mdt
&{mdw_file}         name=file.mdw
&{mdz_file}         name=file.mdz
&{mht_file}         name=file.mht
&{mhtml_file}       name=file.mhtml
&{msc_file}         name=file.msc
&{msh_file}         name=file.msh
&{msh1_file}        name=file.msh1
&{msh2_file}        name=file.msh2
&{msi_file}         name=file.msi
&{msp_file}         name=file.msp
&{mst_file}         name=file.mst
&{ocx_file}         name=file.ocx
&{ops_file}         name=file.ops
&{osd_file}         name=file.osd
&{pcd_file}         name=file.pcd
&{pif_file}         name=file.pif
&{pl_file}          name=file.pl
&{plg_file}         name=file.plg
&{prf_file}         name=file.prf
&{prg_file}         name=file.prg
&{ps1_file}         name=file.ps1
&{ps2_file}         name=file.ps2
&{psc1_file}        name=file.psc1
&{psc2_file}        name=file.psc2
&{pst_file}         name=file.pst
&{reg_file}         name=file.reg
&{run_file}         name=file.run
&{scf_file}         name=file.scf
&{scr_file}         name=file.scr
&{sh_file}          name=file.sh
&{shb_file}         name=file.shb
&{shs_file}         name=file.shs
&{url_file}         name=file.url
&{vb_file}          name=file.vb
&{vbe_file}         name=file.vbe
&{vbp_file}         name=file.vbp
&{vbs_file}         name=file.vbs
&{vss_file}         name=file.vss
&{vst_file}         name=file.vst
&{vsw_file}         name=file.vsw
&{ws_file}          name=file.ws
&{wsc_file}         name=file.wsc
&{wsf_file}         name=file.wsf
&{wsh_file}         name=file.wsh
&{xba_file}         name=file.xba
&{xnk_file}         name=file.xnk
&{py_file}          name=file.py



###Data files - others

&{corrupted_file}          name=corrupted_file.jpg    path=C:/test_files/others/corrupted_file.jpg    part=1
&{empty_file_name}         name=${none}
&{empty_file_path}         name=file_test.jpg         path=None                                       part=1
&{empty_file_part}         name=file_test.jpg         path=C:/test_files/image_1mb_1_1.jpg            part=${none}
&{empty_file_extension}    name=file_test             
