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
|1) [0-simply_match_school.rb]()
