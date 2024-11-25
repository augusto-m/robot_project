*** Settings ***

Resource    ../../resources/upload_requests.robot

Test Teardown    Status Should Be    204


*** Test Cases ***

Upload "csv_file"

    ${response}    Full upload flow    csv_file


Upload "docx_file"

    ${response}    Full upload flow    docx_file


Upload "json_file"

    ${response}    Full upload flow    json_file    


Upload "jpg_file"

    ${response}    Full upload flow    jpg_file


Upload "jpeg_file"

    ${response}    Full upload flow    jpeg_file


Upload "png_file"

    ${response}    Full upload flow    png_file


Upload "mp3_file"

    ${response}    Full upload flow    mp3_file


Upload "mp4_file"

    ${response}    Full upload flow    mp4_file 


Upload "pdf_file"

    ${response}    Full upload flow    pdf_file    


Upload "ppt_file"

    ${response}    Full upload flow    ppt_file


Upload "pptx_file"

    ${response}    Full upload flow    pptx_file


Upload "rar_file_rb_compacted"

    ${response}    Full upload flow    rar_file_rb_compacted 


Upload "rar_file"

    ${response}    Full upload flow    rar_file


Upload "zip_file"

    ${response}    Full upload flow    zip_file 


Upload "7z_file"

    ${response}    Full upload flow    7z_file 


Upload "txt_file"

    ${response}    Full upload flow    txt_file    


Upload "xls_file"

    ${response}    Full upload flow    xls_file


Upload "xlsx_file"

    ${response}    Full upload flow    xlsx_file











