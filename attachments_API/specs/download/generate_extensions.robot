*** Settings ***

Resource    ../../resources/attachments_requests.robot

Test Teardown    Run Keywords    Status Should Be    200                                           ${response1}
...              AND             Should Be True      ${response1.headers}[Content-Length] > 200
...              AND             Should Contain      ${response1.json()}[0][url]                   https:          
...              AND             Should Contain      ${response1.json()}[0][fileId]                ${file_id}


*** Test Cases ***

Download link of "csv_file"

    ${response}    Full upload flow with wait scan    csv_file

    ${response1}    Generate download link


Download link of "docx_file"

    ${response}    Full upload flow with wait scan    docx_file

    ${response1}    Generate download link


Download link of "json_file"

    ${response}    Full upload flow with wait scan    json_file

    ${response1}    Generate download link    


Download link of "jpg_file"

    ${response}    Full upload flow with wait scan    jpg_file

    ${response1}    Generate download link


Download link of "jpeg_file"

    ${response}    Full upload flow with wait scan    jpeg_file

    ${response1}    Generate download link


Download link of "png_file"

    ${response}    Full upload flow with wait scan    png_file

    ${response1}    Generate download link


Download link of "mp3_file"

    ${response}    Full upload flow with wait scan    mp3_file

    ${response1}    Generate download link


Download link of "mp4_file"

    ${response}    Full upload flow with wait scan    mp4_file

    ${response1}    Generate download link


Download link of "pdf_file"

    ${response}    Full upload flow with wait scan    pdf_file

    ${response1}    Generate download link    


Download link of "ppt_file"

    ${response}    Full upload flow with wait scan    ppt_file

    ${response1}    Generate download link


Download link of "pptx_file"

    ${response}    Full upload flow with wait scan    pptx_file

    ${response1}    Generate download link


Download link of "rar_file_rb_compacted"

    ${response}    Full upload flow with wait scan    rar_file_rb_compacted

    ${response1}    Generate download link


Download link of "rar_file"

    ${response}    Full upload flow with wait scan    rar_file

    ${response1}    Generate download link


Download link of "zip_file"

    ${response}    Full upload flow with wait scan    zip_file

    ${response1}    Generate download link 


Download link of "7z_file"

    ${response}    Full upload flow with wait scan    7z_file

    ${response1}    Generate download link 


Download link of "txt_file"

    ${response}    Full upload flow with wait scan    txt_file

    ${response1}    Generate download link    


Download link of "xls_file"

    ${response}    Full upload flow with wait scan    xls_file

    ${response1}    Generate download link


Download link of "xlsx_file"

    ${response}    Full upload flow with wait scan    xlsx_file

    ${response1}    Generate download link