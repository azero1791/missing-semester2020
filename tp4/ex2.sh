#!/usr/bin/env bash

### find words with at least three 'a's and without "'s" for ending.
### in /usr/share/dict/words
WORDS="$(grep -E "^.*a.*a.*a.*[a-zA-Z]*[^'s]$" /usr/share/dict/words | sort | uniq -c)"
echo "$WORDS" | paste -s -d ,
echo "$WORDS" | wc -l | tee output1.log

### find two-letter combinations and number of them
TWOCOM="$(grep -E "^[a-zA-Z]{2}$" /usr/share/dict/words | sort | uniq)"
echo "$TWOCOM" | paste -s -d '\n' | tee find_output.log
echo "$TWOCOM" | wc -l | tee output2.log

STD="$(./get_all_twocoms.sh | sort | uniq | paste -s -d '\n')" 
echo "$STD" > std_output.log

### find two-letter combinations not occurring after process above
diff -u find_output.log std_output.log > leftcom_output.log
