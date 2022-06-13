# Introduction to research methods 
Final project

## Introduction 

In this repository is a shell script which counts the Dutch words "friet, frietje, frietjes, patat, patatje, patatjes" in the Dutch Tweet collection of the University of Groningen. 


## Data 

The data is available on Karora, the server of the Rijks Universiteit Groningen. 

## Run 
 to run this code you have to log in to your RUG account using Karora, to do that run in the terminal: 
 
  ```ruby
  ssh <your_rug_number>@karora.let.rug.nl
  ```
 You will be asked to enter your passowrd and authenticator code. 
 
 After you logged in you can directly run the commands in the script as: 
 ```ruby
 zless /net/corpora/twitter2/Tweets/2020/02/*\:*.out.gz |
 /net/corpora/twitter2/tools/tweet2tab text user.location |
  grep -E -i -w '^\t*.utrecht|gelderland|zuid holland|zuid-holland|noord brabant|noord-brabant|zeeland|limburg' | 
  grep -v 'patat|patatje|patatjes' | grep -E -i -w 'friet|frietje|frietjes' | wc -l
  ```
  
  This command will count how many times the words friet, frietje, frietjes was used in the south of the Netherlands in February of 2020. 
  
  Then do the same for the other 3 commands in the script. 
 
  
## Output
 The output of this code must be the number of how many Tweets did include the words (patat, patatje, patatjes, friet, frietje, frietjes) in the north and in the south of the Netherlands. 
 - patat, patatje, patatjes in the north = 94 times 
 - patat, patatje, patatjes in the south = 35 times
 - friet, frietje, frietjes in the north = 59 times 
 - friet, frietje, frietjes in the south = 62 times
 
## Versions
 OS used macOS Monterey `version 12.0.1`.  
 GNU bash, version `3.2.57(1)`.  
 Data used from 01/02/2020 until 29/02/2020
