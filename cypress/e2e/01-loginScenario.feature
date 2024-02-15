@regression
Feature: ToolShop Login Testleri
# feature, description bloguna benzer
# scenario, it bloguna benzer

#POZITIF SENARIO
@smoke @validLogin
    Scenario:Admin hesabi icin geçerli verilerle login testi
    Given Ben ToolShop sitesine giderim
    When Sign in linkine tiklarim
    And Email alanina bir email yazarim
    And Password alanina bir password yazarim
    And Login butonuna tiklarim
    Then Dasboard sayfasinin acildigini dogrularim
    And Site URLinde admin ve dashboard kelimelerinin gectigini dogrularim

    #NEGATIF SENARIO
    @smoke @invalidLogin
    Scenario: Email alani bos birakilarak login testi
    Given Ben ToolShop sitesine giderim
    When Sign in linkine tiklarim
    And Email alanini bos birakirim
    And Password alanina bir password yazarim
    And Login butonuna tiklarim
    Then Email'in gerekli oldugunu soylenen bir hata mesaji gorurum

    Scenario: Linki ayni sekmede acma
    Given Ben ToolShop sitesine giderim
    When Github Repo linkine tiklarim
