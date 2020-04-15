*** Variables ***
${URL}  http://www.mall.cz
${BROWSER}  chrome

*** Keywords ***
Start Mall test
    open browser  ${URL}  ${BROWSER}
    maximize browser window
    capture page screenshot