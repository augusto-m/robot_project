*** Settings ***

Resource    ../../resources/attachments_requests.robot


*** Test Cases ***

Validate lock public link

    ${response}    Full upload flow with wait scan

    ${response2}    Generate public link

    ${response3}    Lock public link

    Status Should Be    200    ${response3}


Lock public link nonexist file_id

    ${response}    Lock public link    ${fake_file_id}

    Status Should Be    404    ${response}


Lock public link deleted file_id ID

    ${response}    Full upload flow with wait scan

    ${response2}    Generate public link

    ${response3}    Delete attachments

    ${response4}    Lock public link

    Status Should Be    404    ${response4}