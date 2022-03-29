#!/bin/bash
# Author: M. Issa
# Date: 29-03-2022


# To use this code you have to log in to karora using ssh <yourSnumber>@karaora.let.rug.nl
# after that you can excute the following command to compute how many times the words friet, frietje, frietjes was used in the south of the Netherlands. 


zless /net/corpora/twitter2/Tweets/2020/02/*\:*.out.gz |
 /net/corpora/twitter2/tools/tweet2tab text user.location |
  grep -E -i -w '^\t*.utrecht|gelderland|zuid holland|zuid-holland|noord brabant|noord-brabant|zeeland|limburg' | 
  grep -v 'patat|patatje|patatjes' | grep -E -i -w 'friet|frietje|frietjes' | wc -l

# This command to compute how many times the words friet, frietje, frietjes was used in the north of the Netherlands. 
  zless /net/corpora/twitter2/Tweets/2020/02/*\:*.out.gz |
   /net/corpora/twitter2/tools/tweet2tab text user.location|
   grep -E -i -w '^\t*.friesland|fryslân|drenthe|noord-holland|noord holland|overijsel|groningen|flevoland'|
   grep -v 'patat|patatje|patatjes'|grep -E -i -w 'friet|frietje|frietjes' | wc -l 

# This command to compute how many times the words patat, patatje, patatjes was used in the north of the Netherlands. 
zless /net/corpora/twitter2/Tweets/2020/02/*\:*.out.gz |
 /net/corpora/twitter2/tools/tweet2tab text user.location|
 grep -E -i -w '^\t*.friesland|fryslân|drenthe|noord-holland|noord holland|overijsel|groningen|flevoland'|
 grep -v 'friet|frietje|fritjes'|
 grep -E -i -w 'patat|patatje|patatjes' | wc -l 


# This command to compute how many times the words patat, patatje, patatjes was used in the south of the Netherlands. 
 zless /net/corpora/twitter2/Tweets/2020/02/*\:*.out.gz |
  /net/corpora/twitter2/tools/tweet2tab text user.location|
  grep -E -i -w '^\t*.utrecht|gelderland|zuid holland|zuid-holland|noord brabant|noord-brabant|zeeland|limburg'|
  grep -v 'friet|frietje|frietjes'| 
  grep -E -i -w 'patat|patatje|patatjes' | wc -l