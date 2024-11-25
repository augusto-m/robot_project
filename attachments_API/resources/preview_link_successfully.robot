*** Settings ***

Resource    attachments_requests.robot


*** Keywords ***

Generate preview link successfully

    [Arguments]    ${file_name_arg}

    ${response}    Full upload flow with wait scan    ${file_name_arg}

    ${response1}    Generate preview link

    [Return]    ${response1}


Generate page preview link successfully

    [Arguments]    ${file_name_arg}

    ${response}    Full upload flow with wait scan    ${file_name_arg}

    ${response1}    Generate page preview link

    [Return]    ${response1}