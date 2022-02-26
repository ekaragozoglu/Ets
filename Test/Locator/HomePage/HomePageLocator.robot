*** Settings ***

Library    SeleniumLibrary
Library    BuiltIn

*** Variable ***

${ClosePopUpButton}     xpath=//button[@class='mfp-close wis-mfp-close-150878']
${SearchTextbox}           xpath=//input[@id="tb-autocomplete"]
${SelectFirstChoice}    xpath=//form[@id="sf-hotelSearchForm"]//li[1]
${SelectSecondChoice}    xpath=//form[@id="sf-hotelSearchForm"]//li[2]
${SelectThirdChoice}    xpath=//form[@id="sf-hotelSearchForm"]//li[2]
${CheckInDate}    xpath=//div[@id="checkIn"]
${CheckOutDate}    xpath=//div[@id="checkOut"]
${SelectChecInDate19}       xpath=//form[@id="sf-hotelSearchForm"]//td[@class='weekend'][contains(text(),' 19 ')]
${SelectCheckOutDate25}       xpath=(//form[@id="sf-hotelSearchForm"]//td[contains(text(),' 25 ')])[2]
${NumberOfGuestButton}        xpath=//div[@class="col-lg-7 search-bottom"]
${SelectMinusOnAdult}         xpath=(//button[@data-type="minus"])[1]
${SelectMinusOnChild}         xpath=(//button[@data-type="minus"])[2]
${SelectPlusOnAdult}         xpath=(//button[@data-type="plus"])[1]
${SelectPlusOnChild}         xpath=(//button[@data-type="plus"])[2]
${SearchButton}             xpath=//button[@type="button"][contains(text(),'ARA')]
