*** Settings ***

Library         DateTime
Library         SeleniumLibrary    screenshot_root_directory=ScreenShots
Library         DatabaseLibrary
Library         OperatingSystem
Resource        ../StepDefination/ReservationSteps.robot
Test Teardown   Close Browser

*** Test Cases ***

Create single room reservation with card- Include BB
    User goes to ETSTur home page
    User must able to see "Nereye gitmek istersin?" text on page
    User must able to see "Giriş Tarihi" text on page
    User must able to see "Çıkış Tarihi" text on page
    User must able to see "ARA" text on page
    User closes pop up if exist
    User fills search textbox with "Marmaris" and select region
    User selects check in and check out date
    User must able to see total accommodation day
    User selects number of guests as single
    User clicks "Ara" button
    User must able to see "Sonuçları Filtrele" text on page
    User selects hotel from list
    User must able to see selected hotel name on page
    User must able to see room types and prices
    User selects standart room with BB
    User must able to see "KİŞİ BİLGİLERİ" text on page
    User must able to see "ÖDEME" text on page
    User must able to see "REZERVASYON TAMAM!" text on page
    User selects gender as male
    User fills guest information textboxes
    User clicks continue to purchase button
    User must able to see payment methods with "KART İLE ÖDE", "GARANTİ PAY", "KOLAY HAVALE" and "PAYCELL"
    User selects payment type as card
    User must able to see card detail box
    User fills card details textboxes
    User must able to see total amount
    User must able to see "Rezervasyon Yap" button
