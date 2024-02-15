@regression
Feature: ToolShop Login Testleri

    Scenario: Admin hesabi icin geçerli verilerle login testi - String parametre kullanarak
    Given Ben ToolShop sitesine giderim
    When Sign in linkine tiklarim
    And Email alanina "admin@practicesoftwaretesting.com" yazarim
    And Password alanina "welcome01" yazarim
    And Login butonuna tiklarim
    Then Site URLinde "admin" ve "dashboard" kelimelerinin gectigini dogrularim

@smoke
     Scenario: Customer hesabi icin geçerli verilerle login testi - String parametre kullanarak
    Given Ben ToolShop sitesine giderim
    When Sign in linkine tiklarim
    And Email alanina "customer@practicesoftwaretesting.com" yazarim
    And Password alanina "welcome01" yazarim
    And Login butonuna tiklarim
    Then Site URLinde "#" ve "account" kelimelerinin gectigini dogrularim

     Scenario: Admin hesabi icin geçersiz verilerle login testi - int parametre kullanarak
    Given Ben ToolShop sitesine giderim
    When Sign in linkine tiklarim
    And Email alanina "customer@practicesoftwaretesting.com" yazarim
    And Password alanina 12345678 yazarim
    And Login butonuna tiklarim
    