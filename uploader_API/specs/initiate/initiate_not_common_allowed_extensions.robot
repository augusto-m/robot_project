*** Settings ***

Resource    ../../resources/upload_requests.robot

Test Teardown    Run Keywords    Status Should Be       200
...              AND             Should Not Be Empty    ${response.json()["fileId"]}
...              AND             Should Not Be Empty    ${response.json()["uploadId"]}
...              AND             Abort upload


*** Test Cases ***

Initiate upload "dot_file"

    ${response}    Initiate upload    dot_file


Initiate upload "docpreword60_file"

    ${response}    Initiate upload    docpreword60_file


Initiate upload "dotx_file"

    ${response}    Initiate upload    dotx_file


Initiate upload "dotm_file"

    ${response}    Initiate upload    dotm_file


Initiate upload "flatopc_file"

    ${response}    Initiate upload    flatopc_file


Initiate upload "flatopcmacroenabled_file"

    ${response}    Initiate upload    flatopcmacroenabled_file


Initiate upload "flatopctemplate_file"

    ${response}    Initiate upload    flatopctemplate_file


Initiate upload "flatopctemplatemacroenabled_file"

    ${response}    Initiate upload    flatopctemplatemacroenabled_file


Initiate upload "rtf_file"

    ${response}    Initiate upload    rtf_file


Initiate upload "wordml_file"

    ${response}    Initiate upload    wordml_file


Initiate upload "html_file"

    ${response}    Initiate upload    html_file


Initiate upload "mobi_file"

    ${response}    Initiate upload    mobi_file


Initiate upload "odt_file"

    ${response}    Initiate upload    odt_file


Initiate upload "ott_file"

    ${response}    Initiate upload    ott_file


Initiate upload "md_file"

    ${response}    Initiate upload    md_file


Initiate upload "excel97To2003_file"

    ${response}    Initiate upload 		excel97To2003_file


Initiate upload "TSV_file"

    ${response}    Initiate upload 		TSV_file


Initiate upload "tabdelimited_file"
    
    ${response}    Initiate upload 		tabdelimited_file


Initiate upload "html_file"
    
    ${response}    Initiate upload 		html_file


Initiate upload "ods_file"

    ${response}    Initiate upload 		ods_file


Initiate upload "spreadsheetML_file"

    ${response}    Initiate upload 		spreadsheetML_file


Initiate upload "xlsb_file"
    
    ${response}    Initiate upload 		xlsb_file


Initiate upload "numbers_file"

    ${response}    Initiate upload 		numbers_file


Initiate upload "FODS_file"
    
    ${response}    Initiate upload 		FODS_file


Initiate upload "SXC_file"

    ${response}    Initiate upload 		SXC_file


Initiate upload "pps_file"

    ${response}    Initiate upload 		pps_file


Initiate upload "ppsx_file"

    ${response}    Initiate upload 		ppsx_file


Initiate upload "odp_file"
    
    ${response}    Initiate upload 		odp_file


Initiate upload "potx_file"
    
    ${response}    Initiate upload 		potx_file


Initiate upload "pptm_file"
    
    ${response}    Initiate upload 		pptm_file


Initiate upload "ppsm_file"
    
    ${response}    Initiate upload 		ppsm_file


Initiate upload "potm_file"
    
    ${response}    Initiate upload 		potm_file


Initiate upload "otp_file"
    
    ${response}    Initiate upload 		otp_file


Initiate upload "ppt95_file"

    ${response}    Initiate upload 		ppt95_file


Initiate upload "pot_file"

    ${response}    Initiate upload 		pot_file