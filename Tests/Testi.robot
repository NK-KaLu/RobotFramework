***Settings***
Resource        ../Resources/Testi.resource
Suite Setup     Test Suite Setup
Suite Teardown  CloseAllBrowsers

***Test Cases***
Swaglabsin etusivu avautuu
    Siirrytään swaglabsin etusivulle
    Varmistetaan oikea sivu

Kirjaudutaan sisään    
    Login
    
laitetaan tuote koriin
    Add product to cart
    
aukaistaan kori
    Open cart

Checkout
    Checkout

