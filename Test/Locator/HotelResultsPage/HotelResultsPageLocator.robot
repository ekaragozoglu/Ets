*** Settings ***

Library    SeleniumLibrary
Library    BuiltIn

*** Variable ***

${SelectHotel1}     xpath=(//div[@class="search-img-content"])[1]
${SelectHotel2}     xpath=(//div[@class="search-img-content"])[2]
${SelectHotel3}     xpath=(//div[@class="search-img-content"])[3]
${SelectHotel4}     xpath=(//div[@class="search-img-content"])[4]
${SelectHotel5}     xpath=(//div[@class="search-img-content"])[5]
${SelectHotel6}     xpath=(//div[@class="search-img-content"])[6]
${SelectHotel7}     xpath=(//div[@class="search-img-content"])[7]
${SelectHotel8}     xpath=(//div[@class="search-img-content"])[8]
${SelectHotel9}     xpath=(//div[@class="search-img-content"])[9]
${SelectHotel10}     xpath=(//div[@class="search-img-content"])[10]
${SelectedHotelName}        xpath=//div[@class="hotel-name"]
${RoomCards}         xpath=//div[@class="room-card"]
${RoomPrices}        xpath=//span[@class="total-room-price"]
${StandartRoomBB}     xpath=(//a[@title="Odayı Seç"])[1]
