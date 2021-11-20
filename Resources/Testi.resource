***Settings***
Library          QWeb

***Variables***
${swaglabs_url}         https://www.saucedemo.com/
${BROWSER}              chrome
${DELAY}                0s
${elementti_xpath}    //*[@id="shopping_cart_container"]/a

***Keywords***
Test Suite Setup
    OpenBrowser         about:blank     ${BROWSER}
    SetConfig           SearchMode      draw
    SetConfig           Delay           ${DELAY}

Siirrytään swaglabsin etusivulle
    GoTo                ${swaglabs_url}

Varmistetaan oikea sivu
    VerifyText          Accepted usernames

***Keywords***
Login

    TypeText    Username    standard_user
    TypeText    Password    secret_sauce
    QWeb.Click Text    LOGIN

Assert logged in
    Location Should Be    ${SWAG_LABS_URL}/inventory.html

***Keywords***
Add product to cart
    QWeb.Click Text    Sauce Labs Backpack
    QWeb.Click Text    ADD TO CART
***Keywords***
Open cart
    ClickElement        ${elementti_xpath}
    
***Keywords***
Checkout
    
    QWeb.Click Text    CHECKOUT
    TypeText    first-name    Kalevi
    TypeText    last-name    Pottu
    TypeText    postal-code    32323
    QWeb.Click Text     CONTINUE
    QWeb.Click Text     FINISH
    
	    
