# Eliza

This is a fun little implementation of the classic Eliza in ruby. The challenge was to modify the code such that input that did not contain a key word would be assigned a new "dummy" answer. This was not trivial for beginners because the code supplied was not very transparent (no comments meant I had to work through it in detail)
After setting up the dummy answers, I added in two more features, Eliza yells (upcase) if the input includes an exclamation mark, she shouts no, no, no if she is in yelling mode for 10 exchanges and she terminates the session after 10 exchanges.
This was also my first experience using rspec. I have come to really enjoy rspec but at the time, there were sad puppies everywhere.

To run, just navigate to the folder and run $ruby eliza.rb
