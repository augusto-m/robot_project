*** Settings ***

Resource    ../../resources/attachments_requests.robot

Test Teardown    Run Keywords    Status Should Be    200                                           ${response2}
...              AND             Should Be True      ${response2.headers}[Content-Length] > 200    
...              AND             Should Contain      ${response2.json()}[url]                      https:


*** Test Cases ***

Public link of "csv_file"

    ${response}    Full upload flow with wait scan    csv_file

    ${response2}    Generate public link


Public link of "docx_file"

    ${response}    Full upload flow with wait scan    docx_file

    ${response2}    Generate public link


Public link of "json_file"

    ${response}    Full upload flow with wait scan    json_file

    ${response2}    Generate public link    


Public link of "jpg_file"

    ${response}    Full upload flow with wait scan    jpg_file

    ${response2}    Generate public link


Public link of "jpeg_file"

    ${response}    Full upload flow with wait scan    jpeg_file

    ${response2}    Generate public link


Public link of "png_file"

    ${response}    Full upload flow with wait scan    png_file

    ${response2}    Generate public link


Public link of "mp3_file"

    ${response}    Full upload flow with wait scan    mp3_file

    ${response2}    Generate public link


Public link of "mp4_file"

    ${response}    Full upload flow with wait scan    mp4_file

    ${response2}    Generate public link


Public link of "pdf_file"

    ${response}    Full upload flow with wait scan    pdf_file

    ${response2}    Generate public link    


Public link of "ppt_file"

    ${response}    Full upload flow with wait scan    ppt_file

    ${response2}    Generate public link


Public link of "pptx_file"

    ${response}    Full upload flow with wait scan    pptx_file

    ${response2}    Generate public link


Public link of "rar_file_rb_compacted"

    ${response}    Full upload flow with wait scan    rar_file_rb_compacted

    ${response2}    Generate public link


Public link of "rar_file"

    ${response}    Full upload flow with wait scan    rar_file

    ${response2}    Generate public link


Public link of "zip_file"

    ${response}    Full upload flow with wait scan    zip_file

    ${response2}    Generate public link 


Public link of "7z_file"

    ${response}    Full upload flow with wait scan    7z_file

    ${response2}    Generate public link 


Public link of "txt_file"

    ${response}    Full upload flow with wait scan    txt_file

    ${response2}    Generate public link    


Public link of "xls_file"

    ${response}    Full upload flow with wait scan    xls_file

    ${response2}    Generate public link


Public link of "xlsx_file"

    ${response}    Full upload flow with wait scan    xlsx_file

    ${response2}    Generate public link