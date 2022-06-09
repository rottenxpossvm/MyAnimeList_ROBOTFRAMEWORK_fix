*** Settings ***

Library     SeleniumLibrary


*** Variables ***

${BROWSER}=    firefox
${URL}=        https://myanimelist.net/


*** Test Cases ***

Run Browser
        Open Browser                    ${URL}  ${BROWSER}
        Close Browser

Add to library as an unregistered user

        Open Browser                    ${URL}  ${BROWSER}
        Wait Until Element Is Visible   xpath://*[@id="qc-cmp2-ui"]
        Click Element                   xpath://*[@id="qc-cmp2-ui"]
        Click Element                   xpath://*[@id="qc-cmp2-ui"]/div[2]/div/button[1]
        Wait Until Element Is Visible   xpath://a[@title='Quick add anime to my list'][@href='https://myanimelist.net/login.php?error=login_required&from=%2Fanime%2F43608%2FKaguya-sama_wa_Kokurasetai__Ultra_Romantic']
        Click Element                   xpath://a[@title='Quick add anime to my list'][@href='https://myanimelist.net/login.php?error=login_required&from=%2Fanime%2F43608%2FKaguya-sama_wa_Kokurasetai__Ultra_Romantic']
        Wait Until Element Is Visible   xpath://div[@class='badresult']
        Page Should Contain Element     xpath://div[@class='badresult']
        Close Browser

MAL To Crunchyroll Link Test

        Open Browser                    ${URL}  ${BROWSER}
        Wait Until Element Is Visible   xpath://*[@id="qc-cmp2-ui"]
        Click Element                   xpath://*[@id="qc-cmp2-ui"]
        Click Element                   xpath://*[@id="qc-cmp2-ui"]/div[2]/div/button[1]
        Wait Until Element Is Visible   xpath://a[@class='title'][@href='https://myanimelist.net/anime/43608/Kaguya-sama_wa_Kokurasetai__Ultra_Romantic']
        Set Focus To Element            xpath://a[@class='title'][@href='https://myanimelist.net/anime/43608/Kaguya-sama_wa_Kokurasetai__Ultra_Romantic']
        Click Element                   xpath://a[@class='title'][@href='https://myanimelist.net/anime/43608/Kaguya-sama_wa_Kokurasetai__Ultra_Romantic']
        Wait Until Element Is Visible   xpath://*[@id="headerSmall"]/a
        Execute JavaScript              window.scroll(0,1000)
        Scroll Element Into View        xpath://*[@class='broadcast-item available ga-click'][@title='Crunchyroll']
        Wait Until Element Is Visible   xpath://*[@class='broadcast-item available ga-click'][@title='Crunchyroll']
        Set Focus To Element            xpath://*[@class='broadcast-item available ga-click'][@title='Crunchyroll']
        Click Element                   xpath://*[@class='broadcast-item available ga-click'][@title='Crunchyroll']
        Page Should Contain Element     xpath://*[@id="header_container"]/div/div
        Close Browser
