#!/usr/bin/env bash

### find words with at least three 'a's and without "'s" for ending.
### in /usr/share/dict/words
WORDS="$(grep -E "^.*a.*a.*a.*[a-zA-Z]*[^'s]$" /usr/share/dict/words | sort | uniq -c)"
echo "$WORDS" | paste -s -d ,
echo "$WORDS" | wc -l | tee output1.log

### find two-letter combinations and number of them
TWOCOM="$(grep -E "^[a-zA-Z]{2}$" /usr/share/dict/words)"
echo "$TWOCOM" | paste -s -d ,
echo "$TWOCOM" | wc -l | tee output2.log

### find two-letter combinations not occurring after process above
