Feature: Create and view downloads

  In order to control data downloading process
  A user
  Should be able to create downloads per instruments and per date

  Scenario:
    Given List of instruments contains "ALMK" instrument
    And User is on the "Home" page
    When User presses "Downloads" button
    Then User is redirected to the "Downloads" page
    And User sees the list of completed downloads
    When User presses "Perform New Download" button
    Then User is redirected to the "New Download" page
    When User selects "ALMK" instrument from the list
    And User fills in "Begin Date" field with "01012009" value
    And User fills in "End Date" field with "01012009" value
    And User presses "Download" button
    Then User is redirected to the "Downloads" page
    And User sees the list of completed downloads
    And The list of instruments contains a download for "ALMK" code and "01012009" Date
    When User selects download for "ALMK" code and "01012009" Date
    Then User is redirected to "Download View" page
    And User is able to see downloaded file content


#    Then User fills in "Code" field with "Rashba1" value
#    And User presses "Save" button
#    Then User is redirected to the "Instruments" page
#    And User sees the list of instruments
#    And The list of instruments contains "RASHBA1" instrument
#    And The list of instruments doesn't contain "BORYS" instrument
#    When User selects "RASHBA1" instrument
#    And User presses "Delete" button
#    Then User is redirected to the "Instruments" page
#    And The list of instruments doesn't contain "RASHBA1" instrument

