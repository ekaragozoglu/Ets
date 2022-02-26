*** Settings ***

Library     SeleniumLibrary
Library     String
Library     BuiltIn
Library     DatabaseLibrary
Library     OperatingSystem
Resource    ../Locator/BaseUrl/BaseLocator.robot
Resource    ../Locator/HomePage/HomePageLocator.robot
Resource    ../Locator/HotelResultsPage/HotelResultsPageLocator.robot
Resource    ../Locator/OrderPage/OrderPageLocator.robot

*** Keywords ***

User goes to ETSTur home page
     Close All Browsers
     Set Selenium Implicit Wait    2
     Open Browser   ${URL}    ${BROWSER}    options=add_argument("--incognito")
     Set Window Size    1680    1050
     Maximize Browser Window
     Sleep    2
     Set Browser Implicit Wait    2
     Delete All Cookies

User must able to see "${InputText}" text on page
     Wait Until Page Contains        ${InputText}
     Sleep    3

User closes pop up if exist
     ${present}=     Run Keyword And Return Status    Page Should Contain Element   ${ClosePopUpButton}
     Run Keyword If    '${present}'=='True'     Close popup

Close popup
    Click Element    ${ClosePopUpButton}

User fills search textbox with "${InputText}" and select region
    Click Element    ${SearchTextbox}
    Input Text   ${SearchTextbox}    ${InputText}
    Sleep    2
    Mouse Over    ${SelectFirstChoice}
    Click Element    ${SelectFirstChoice}
    Sleep    2

User selects check in and check out date
    Click Element    ${CheckInDate}
    Sleep    2
    Mouse Over    ${CheckInDate}
    Click Element    ${SelectChecInDate19}
    Sleep    2
    Mouse Over    ${SelectCheckOutDate25}
    Click Element    ${SelectCheckOutDate25}

User must able to see total accommodation day
    Page Should Contain    Gece
    Sleep    2

User selects number of guests as single
    Click Element    ${NumberOfGuestButton}
    Sleep    2
    Page Should Contain    Yetişkin Sayısı
    Page Should Contain    Çocuk Sayısı
    Click Element    ${SelectMinusOnAdult}
    Page Should Contain    1
    Sleep    2

User clicks "Ara" button
    Mouse Over    ${SearchButton}
    Click Element    ${SearchButton}

User selects hotel from list
    Mouse Over    ${SelectHotel7}
    Click Element    ${SelectHotel7}

User must able to see selected hotel name on page
    Switch Window    New
    Wait Until Page Contains Element    ${SelectedHotelName}
    Page Should Contain Element    ${SelectedHotelName}

User must able to see room types and prices
    Page Should Contain Element    ${RoomCards}
    Page Should Contain Element    ${RoomPrices}

User selects standart room with BB
    Mouse Over    ${StandartRoomBB}
    Click Element    ${StandartRoomBB}

User selects gender as male
    Click Element    ${SelectGenderMale}

User fills guest information textboxes
    Click Element    ${NameTextbox}
    Input Text   ${NameTextbox}    Mehmet
    Sleep    1
    Click Element    ${SurnameTextbox}
    Input Text   ${SurnameTextbox}    Yıldırım
    Sleep    1
    Click Element    ${BirthdayTextbox}
    Input Text   ${BirthdayTextbox}    31051980
    Sleep    1
    Click Element    ${EmailTextbox}
    Input Text   ${EmailTextbox}    e4@mail.com
    Sleep    1
    Click Element    ${GsmTextbox}
    Input Text   ${GsmTextbox}    5431073587
    Sleep    1
    Click Element    ${IdCardTextbox}
    Input Text   ${IdCardTextbox}    55317222850
    Sleep    1

User clicks continue to purchase button
    Mouse Over    ${ContinueToPurchase}
    Click Element    ${ContinueToPurchase}

User must able to see payment methods with "KART İLE ÖDE", "GARANTİ PAY", "KOLAY HAVALE" and "PAYCELL"
    Page Should Contain Element    ${PaymentMethodsField}
    Sleep    1

User selects payment type as card
    Mouse Over    ${PayWithCard}
    Click Element    ${PayWithCard}

User must able to see card detail box
    Mouse Over    ${CardDetailBox}
    Page Should Contain Element    ${CardDetailBox}

User fills card details textboxes
    Click Element    ${CardOwnerNameTextbox}
    Input Text   ${CardOwnerNameTextbox}    Mehmet Yıldırım
    Sleep    1
    Click Element    ${CardNumberTextbox}
    Input Text   ${CardNumberTextbox}    4797188119191923
    Sleep    1
    Click Element    ${CardValidMonthButton}
    Sleep    1
    Click Element    ${SelectValidMonth12}
    Sleep    1
    Click Element    ${CardValidYearButton}
    Sleep    1
    Click Element    ${SelectValidYear25}
    Sleep    1
    Click Element    ${CvcTextbox}
    Input Text   ${CvcTextbox}    666
    Sleep    1

User must able to see total amount
    Page Should Contain Element    ${TotalAmount}

User must able to see "Rezervasyon Yap" button
    Mouse Over    ${CreateBookingButton}
    Page Should Contain Element    ${CreateBookingButton}
    Sleep    5
