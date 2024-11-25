*** Settings ***
Library     Browser
Library     OperatingSystem
Resource    ../../variables/global_variables.robot


*** Keywords ***
Download by link

    [Arguments]    ${link}=www.g1.com.br
    # Log            ${${file}.name}
    Log            ${link}


    New Browser    headless=True    downloadsPath=${download_dir}

    Go To    ${link}
    # New Context    acceptDownloads=True

    # ${download_promise}    Promise To Wait For Download
    # ...                    ${download_dir}${/}${${file}.name}

    # New Page    ${link}

    # Wait For    ${download_promise}
