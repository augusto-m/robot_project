*** Settings ***

Resource         ../../resources/preview_link_successfully.robot

Test Teardown    Run Keywords                                       Status Should Be    200                                          ${response}
...              AND                                                Should Be True      ${response.headers}[Content-Length] > 200    
...              AND                                                Should Contain      ${response.json()}[url]                      https: 


*** Test Cases ***

Preview link of "csv_file"

    ${response}    Generate preview link successfully    csv_file


Preview link of "doc_file"

    ${response}    Generate preview link successfully    doc_file


Preview link of "docx_file"

    ${response}    Generate preview link successfully    docx_file


Preview link of "jpg_file"

    ${response}    Generate preview link successfully    jpg_file


Preview link of "jpeg_file"

    ${response}    Generate preview link successfully    jpeg_file


Preview link of "png_file"

    ${response}    Generate preview link successfully    png_file


Preview link of "pdf_file"

    ${response}    Generate preview link successfully    pdf_file


Preview link of "ppt_file"

    ${response}    Generate preview link successfully    ppt_file


Preview link of "pptx_file"

    ${response}    Generate preview link successfully    pptx_file


Preview link of "txt_file"

    ${response}    Generate preview link successfully    txt_file


Preview link of "xls_file"

    ${response}    Generate preview link successfully    xls_file


Preview link of "xlsx_file"

    ${response}    Generate preview link successfully    xlsx_file

