# Experimental!
# read file and convert to [2 n]
# &fras "sample.txt"
&fras "data.txt"

# split by newline
⊸≠@\n
# split by space and parse into number array
⊜(⊜⋕ ⊸≠@ )
# transpose, 2 rows, left and right columns
⍉
Data ←

# decouple
°⊟ Data
# Difference Score
# sort both
∩⍆
# take pairwise absolute difference
⌵-
# add total distance
/+

# Similarity Score
# go back to input data
°⊟ Data

# for each element of top of stack,
# match with each element of the second to top of stack
# returns a [N M] where n is length of top of stack
# and m the length of the second to top
⊞≍’

# sum together each row
≡/+
# multiply pairwise
×
# sum
/+
