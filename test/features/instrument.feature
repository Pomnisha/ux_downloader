Feature: Create, edit and delete an entity

  In order to have a list of exchange instruments under investigation
  A user
  Should be able to add these instruments into DB

Scenario:
  Given User is on the "Home" page
  When User presses "Instruments" button
  Then User is redirected to the "Instruments" page
  And User sees the list of instruments
  When User presses "Create Instrument" button
  Then User is redirected to the "Instrument Creation" page
  When User fills in "Code" field with "Borys" value
  And User presses "Add" button
  Then User is redirected to the "Instruments" page
  And User sees the list of instruments
  And The list of instruments contains "BORYS" instrument
  When User selects "BORYS" instrument
  Then User is redirected to "BORYS Instrument Edit" page
  When User fills in "Code" field with "Rashba1" value
  And User presses "Save" button
  Then User is redirected to the "Instruments" page
  And User sees the list of instruments
  And The list of instruments contains "RASHBA1" instrument
  And The list of instruments doesn't contain "BORYS" instrument
  When User selects "RASHBA1" instrument
  And User presses "Delete" button
  Then User is redirected to the "Instruments" page
  And The list of instruments doesn't contain "RASHBA1" instrument

