# Robot-Framework-Training

Zie dir /TEMPLATE voor een template voor een test:
* helpers
  * helper files bevatten algemene keywords en settings die door verschillende pageObjects en/of tests gebruikt worden 
* reports
  * Vanuit deze folder runnen we de tests. 
  * De reports worden dan ook hier gegenereerd
  * reports mogen niet gecommit worden: zet dit in .**gitignore  
* pageObjects
  * bevat een file voor elke pagina die in onze tests aangesproken wordt 
  * elke file bevat de keywords specifiek voor deze pagina 
  * de variabelen en settings die door deze keywords gebruikt worden blijven ook lokaal in deze file    
* tests
  * test suites 
* file webconfig.robot 
  * bevat basic variables die nodig zijn voor elke test suite

#Run a test
* open a Terminal (or cmd) in de reports folder 
* type:  `robot ../tests`
* all .robot files in directory ../tests will be executed 


#Getting started 
* copy /TEMPLATE folder
* check: ${BASE_URL} in webconfig.robot 
* 


# Referentie
* Robot Framework
  * http://robotframework.org/robotframework/
  * http://robotframework.org/robotframework/latest/libraries/BuiltIn.html
* Selenium
  * http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html  
* Voorbeeld code:
  * https://github.com/SeppVC-Brightest/Robot-Framework-Training 

