*** Settings ***

Resource    ../../resources/upload_requests.robot

Test Teardown    Run Keywords    Status Should Be       200
...              AND             Should Not Be Empty    ${response.json()["fileId"]}
...              AND             Should Not Be Empty    ${response.json()["uploadId"]}
...              AND             Abort upload


*** Test Cases ***

Initiate upload "csv_file"

    ${response}    Initiate upload    csv_file


Initiate upload "docx_file"

    ${response}    Initiate upload    docx_file


Initiate upload "json_file"

    ${response}    Initiate upload    json_file    


Initiate upload "jpg_file"

    ${response}    Initiate upload    jpg_file


Initiate upload "jpeg_file"

    ${response}    Initiate upload    jpeg_file


Initiate upload "png_file"

    ${response}    Initiate upload    png_file


Initiate upload "mp3_file"

    ${response}    Initiate upload    mp3_file


Initiate upload "mp4_file"

    ${response}    Initiate upload    mp4_file 


Initiate upload "pdf_file"

    ${response}    Initiate upload    pdf_file    


Initiate upload "ppt_file"

    ${response}    Initiate upload    ppt_file


Initiate upload "pptx_file"

    ${response}    Initiate upload    pptx_file


Initiate upload "rar_file_rb_compacted"

    ${response}    Initiate upload    rar_file_rb_compacted 


Initiate upload "rar_file"

    ${response}    Initiate upload    rar_file


Initiate upload "zip_file"

    ${response}    Initiate upload    zip_file 


Initiate upload "7z_file"

    ${response}    Initiate upload    7z_file 


Initiate upload "txt_file"

    ${response}    Initiate upload    txt_file    


Initiate upload "xls_file"

    ${response}    Initiate upload    xls_file

    
Initiate upload "xlsx_file"

    ${response}    Initiate upload    xlsx_file











