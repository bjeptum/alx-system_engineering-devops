## **Introduction to concepts on Regular Expression**
 
 This project entails concepts to test out an understanding of regular expressions.

 ## *Requirements*:
 - All your Bash script files must be executable
 - All your files should end with a new line
 - The first line of all your Bash scripts should be exactly #!/usr/bin/env ruby
 - All your regex must be built for the Oniguruma library

 ## Background Context
  For this project, I had to build my regular expression using Oniguruma, a regular expression library that is used by Ruby by default.
  Because the focus of this exercise was to play with regular expressions (regex):
  Here is the Ruby code that I used, I just had to replace the regexp part, meaning the code in between the //:
```
#!/usr/bin/env ruby
puts ARGV[0].scan(/.../).join
```

 ## The description of the files is  as follows:

|Filenames | Description |
| ------------- | ------------- |
|1) [0-simply_match_school.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/0-simply_match_school.rb)|Displays the string School|
|2) [1-repetition_token_0.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/1-repetition_token_0.rb)| Matches repetition of a character between 2 and 5 times |
|3) [2-repetition_token_1.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/2-repetition_token_1.rb)| Displays string with or without character b in string |
|4) [3-repetition_token_2.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/3-repetition_token_2.rb) |Displays repetition of t character between 1 and 4 times |
|5) [4-repetition_token_3.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/4-repetition_token_3.rb) | Matches case of repetition of character t 0 or more times |
|6) [5-beginning_and_end.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/5-beginning_and_end.rb) | Matches 3 character word that starts with h and ends with n |
|7) [6-phone_number.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/6-phone_number.rb) | Matches a 10 digit phone number |
|8) [7-OMG_WHY_ARE_YOU_SHOUTING.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/7-OMG_WHY_ARE_YOU_SHOUTING.rb) | Matches capital letters only |
|9) [100-textme.rb](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x06-regular_expressions/100-textme.rb) | Runs statistics on a log file to output details of [SENDER],[RECEIVER],[FLAGS] |
