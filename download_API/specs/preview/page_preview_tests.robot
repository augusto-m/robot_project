*** Settings ***

Resource    ../../resources/preview_link_successfully.robot
Library    Dialogs

Test Teardown    Close Browser


*** Test Cases ***

# Validate show element (csv) in browser
#     Skip           Don't work
#     ${response}    Generate page preview link successfully    csv_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    embed=[type*='pdf']


# Validate show element (doc) in browser

#     ${response}    Generate page preview link successfully    doc_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=embed[type*='pdf']


Validate show element (docx) in browser

    ${response}    Generate page preview link successfully    docx_file

    ${response1}    Open link in browser    ${response.json()}[url]
    # Pause Execution    teste de clique
    Page Should Contain Element    locator=id:viewer


# Validate show element (jpg) in browser

#     ${response}    Generate page preview link successfully    jpg_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=img


# Validate show element (jpeg) in browser

#     ${response}    Generate page preview link successfully    jpeg_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=img


# Validate show element (png) in browser

#     ${response}    Generate page preview link successfully    png_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=img


# Validate show element (pdf) in browser

#     ${response}    Generate page preview link successfully    pdf_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=embed[type*='pdf'] 


# Validate show element (ppt) in browser

#     ${response}    Generate page preview link successfully    ppt_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=embed[type*='pdf'] 


# Validate show element (pptx) in browser

#     ${response}    Generate page preview link successfully    pptx_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=embed[type*='pdf']


# Validate show element (xls) in browser

#     ${response}    Generate page preview link successfully    xls_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=embed[type*='pdf']



# Validate show element (xlsx) in browser

#     ${response}    Generate page preview link successfully    xlsx_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=embed[type*='pdf']


# Validate show element (txt) in browser

#     ${response}    Generate page preview link successfully    txt_file

#     ${response1}    Open link in browser    ${response.json()}[url]

#     Page Should Contain Element    css=embed[type*='pdf']