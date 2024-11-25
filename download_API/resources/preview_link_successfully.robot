*** Settings ***

Resource    download_requests.robot


*** Keywords ***

Generate preview link (download_API) successfully

    [Arguments]    ${file_name_arg}

    ${response}    Full upload flow with wait scan    ${file_name_arg}

    ${response1}    Generate preview link (download_API)

    [Return]    ${response1}


Generate page preview link (download_API) successfully

    [Arguments]    ${file_name_arg}

    ${response}    Full upload flow with wait scan    ${file_name_arg}

    ${response1}    Generate page preview link (download_API)

    [Return]    ${response1}