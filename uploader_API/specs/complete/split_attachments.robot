*** Settings ***

Resource    ../../resources/upload_requests.robot


*** Test Cases ***

Upload parts in any order
   
   ${response}    Initiate upload    video_21mb_1_4

   ${response2}    Upload stream in any order

   Status Should Be    204    ${response2}

   ${response3}    Complete upload

   Status Should Be    204    ${response3}


Upload without initial part
   
   ${response}    Initiate upload    video_21mb_1_4

   ${response2}    Upload stream without initial part

   Status Should Be    204    ${response2}

   ${response3}    Complete upload

   Status Should Be    400    ${response3}

   ${response4}    Abort upload

   Status Should Be    204    ${response4}


Upload without middle parts
   
   ${response}    Initiate upload    video_21mb_1_4
   
   ${response2}    Upload stream without middle parts

   Status Should Be    204    ${response2}

   ${response3}    Complete upload

   Status Should Be    400    ${response3}

   ${response4}    Abort upload

   Status Should Be    204    ${response4}


Upload without final part

   ${response}    Initiate upload    video_21mb_1_4

   ${response2}    Upload stream without final part

   Status Should Be    204    ${response2}

   ${response3}    Complete upload

   Status Should Be    204    ${response3}


Parts various size
   
   ${response}    Initiate upload    video_21mb_1_4

   ${response2}    Upload stream parts various size

   Status Should Be    204    ${response2}

   ${response3}    Complete upload

   Status Should Be    204    ${response3}


Upload file split video 100 parts
   #  Skip     Much time.
    ${response}    Initiate upload    video_53mb_1_100

    ${response2}    Upload stream attachment 100 parts

    Status Should Be    204    ${response2}

    ${response3}    Complete upload

    Status Should Be    204    ${response3}


Upload file split video 1001 parts
   # Skip     Much time.
   ${response}    Initiate upload    video_215mb_1_1001

   ${response2}    Upload stream attachment 1001 parts

   Status Should Be    204    ${response2}

   ${response3}    Complete upload

   Status Should Be    204    ${response3}


