# FROM
# http://codingbat.com/java/Recursion-1

# Given n of 1 or more, return the factorial of n, which is
# n * (n-1) * (n-2) ... 1. Compute the result recursively
# (without loops).

# factorial(1) → 1
# factorial(2) → 2
# factorial(3) → 6

# Hint: First, detect the "base case", a case so simple that
# the answer can be returned immediately (here when n==1).
# Otherwise make a recursive call of factorial(n-1)
# (towards the base case). Assume the recursive call returns
# a correct value, and fix that value up to make our result.

def factorial(num)
  return num if num == 1
  num * factorial(num - 1)
end


# We have a number of bunnies and each bunny has two big floppy
# ears. We want to compute the total number of ears across all
# the bunnies recursively (without loops or multiplication).

# bunnyEars(0) → 0
# bunnyEars(1) → 2
# bunnyEars(2) → 4

# Hint: First detect the base case (bunnies == 0), and in that
# case just return 0. Otherwise, make a recursive call to
# bunnyEars(bunnies-1). Trust that the recursive call returns
# the correct value, and fix it up by adding 2.

def bunnyEars(num)
  return num if num == 0
  bunnyEars(num - 1) + 2
end


# The fibonacci sequence is a famous bit of mathematics,
# and it happens to have a recursive definition.
# The first two values in the sequence are 0 and 1
# (essentially 2 base cases). Each subsequent value is the
# sum of the previous two values, so the whole sequence is:
# 0, 1, 1, 2, 3, 5, 8, 13, 21 and so on. Define a recursive
# fibonacci(n) method that returns the nth fibonacci number,
# with n=0 representing the start of the sequence.

# fibonacci(0) → 0
# fibonacci(1) → 1
# fibonacci(2) → 1

# Fn = Fn-1 + Fn-2

def fibonacci(num)
  return num if (0..1).include? num
  fibonacci(num-1) + fibonacci(num-2)
end


# We have bunnies standing in a line, numbered 1, 2, ...
# The odd bunnies (1, 3, ..) have the normal 2 ears.
# The even bunnies (2, 4, ..) we'll say have 3 ears,
# because they each have a raised foot.
# Recursively return the number of "ears" in the bunny line
# 1, 2, ... n (without loops or multiplication).

# bunnyEars2(0) → 0
# bunnyEars2(1) → 2
# bunnyEars2(2) → 5

def bunnyEars2(num)
  return 0 if num == 0
  num % 2 == 0 ? 3 + bunnyEars2(num-1) : 2 + bunnyEars2(num-1)
end



# We have triangle made of blocks. The topmost row has 1 block,
# the next row down has 2 blocks, the next row has 3 blocks,
# and so on. Compute recursively (no loops or multiplication)
# the total number of blocks in such a triangle with the given
# number of rows.

# triangle(0) → 0
# triangle(1) → 1
# triangle(2) → 3






# Given a non-negative int n, return the sum of its digits
# recursively (no loops). Note that mod (%) by 10 yields the
# rightmost digit (126 % 10 is 6), while divide (/) by 10
# removes the rightmost digit (126 / 10 is 12).

# sumDigits(126) → 9
# sumDigits(49) → 13
# sumDigits(12) → 3






# Given a non-negative int n, return the count of the occurrences
# of 7 as a digit, so for example 717 yields 2. (no loops). Note
# that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
# while divide (/) by 10 removes the rightmost digit
# (126 / 10 is 12).

# count7(717) → 2
# count7(7) → 1
# count7(123) → 0





# Given a non-negative int n, compute recursively (no loops)
# the count of the occurrences of 8 as a digit, except that
# an 8 with another 8 immediately to its left counts double,
# so 8818 yields 4. Note that mod (%) by 10 yields
# the rightmost digit (126 % 10 is 6),
# while divide (/) by 10 removes the rightmost digit
# (126 / 10 is 12).

# count8(8) → 1
# count8(818) → 2
# count8(8818) → 4





# Given base and n that are both 1 or more, compute recursively
# (no loops) the value of base to the n power, so powerN(3, 2)
# is 9 (3 squared).

# powerN(3, 1) → 3
# powerN(3, 2) → 9
# powerN(3, 3) → 27






# Given a string, compute recursively (no loops) the number
# of lowercase 'x' chars in the string.

# countX("xxhixx") → 4
# countX("xhixhix") → 3
# countX("hi") → 0






# Given a string, compute recursively (no loops) the number
# of times lowercase "hi" appears in the string.

# countHi("xxhixx") → 1
# countHi("xhixhix") → 2
# countHi("hi") → 1







# Given a string, compute recursively (no loops) a new string
# where all the lowercase 'x' chars have been changed to 'y' chars.

# changeXY("codex") → "codey"
# changeXY("xxhixx") → "yyhiyy"
# changeXY("xhixhix") → "yhiyhiy"







# Given a string, compute recursively (no loops) a new string
# where all appearances of "pi" have been replaced by "3.14".

# changePi("xpix") → "x3.14x"
# changePi("pipi") → "3.143.14"
# changePi("pip") → "3.14p"






# Given a string, compute recursively a new string where all
# the 'x' chars have been removed.

# noX("xaxb") → "ab"
# noX("abc") → "abc"
# noX("xx") → ""




# Given an array of ints, compute recursively if the array
# contains a 6. We'll use the convention of considering only
# the part of the array that begins at the given index.
# In this way, a recursive call can pass index+1 to move down
# the array. The initial call will pass in index as 0.

# array6({1, 6, 4}, 0) → true
# array6({1, 4}, 0) → false
# array6({6}, 0) → true





# Given an array of ints, compute recursively the number of
# times that the value 11 appears in the array. We'll use the
# convention of considering only the part of the array that
# begins at the given index. In this way, a recursive call
# can pass index+1 to move down the array. The initial call
# will pass in index as 0.

# array11({1, 2, 11}, 0) → 1
# array11({11, 11}, 0) → 2
# array11({1, 2, 3, 4}, 0) → 0





# Given an array of ints, compute recursively if the array
# contains somewhere a value followed in the array by that
# value times 10. We'll use the convention of considering
# only the part of the array that begins at the given index.
# In this way, a recursive call can pass index+1 to move down
# the array. The initial call will pass in index as 0.

# array220({1, 2, 20}, 0) → true
# array220({3, 30}, 0) → true
# array220({3}, 0) → false




# Given a string, compute recursively a new string where all
# the adjacent chars are now separated by a "*".

# allStar("hello") → "h*e*l*l*o"
# allStar("abc") → "a*b*c"
# allStar("ab") → "a*b"





# Given a string, compute recursively a new string where
# identical chars that are adjacent in the original string
# are separated from each other by a "*".

# pairStar("hello") → "hel*lo"
# pairStar("xxyy") → "x*xy*y"
# pairStar("aaaa") → "a*a*a*a"




# Given a string, compute recursively a new string where all
# the lowercase 'x' chars have been moved to the end of the string.

# endX("xxre") → "rexx"
# endX("xxhixx") → "hixxxx"
# endX("xhixhix") → "hihixxx"






# We'll say that a "pair" in a string is two instances of a
# char separated by a char. So "AxA" the A's make a pair.
# Pair's can overlap, so "AxAxA" contains 3 pairs -- 2 for
# A and 1 for x. Recursively compute the number of pairs in
# the given string.

# countPairs("axa") → 1
# countPairs("axax") → 2
# countPairs("axbx") → 1






# Count recursively the total number of "abc" and "aba" substrings
# that appear in the given string.

# countAbc("abc") → 1
# countAbc("abcxxabc") → 2
# countAbc("abaxxaba") → 2




# Given a string, compute recursively (no loops) the number of
# "11" substrings in the string. The "11" substrings should not
# overlap.

# count11("11abc11") → 2
# count11("abc11x11x11") → 3
# count11("111") → 1




# Given a string, return recursively a "cleaned" string where
# adjacent chars that are the same have been reduced to a single
# char. So "yyzzza" yields "yza".

# stringClean("yyzzza") → "yza"
# stringClean("abbbcdd") → "abcd"
# stringClean("Hello") → "Helo"





# Given a string, compute recursively the number of times
# lowercase "hi" appears in the string, however do not count
# "hi" that have an 'x' immedately before them.

# countHi2("ahixhi") → 1
# countHi2("ahibhi") → 2
# countHi2("xhixhi") → 0






# Given a string that contains a single pair of parenthesis,
# compute recursively a new string made of only of the parenthesis
# and their contents, so "xyz(abc)123" yields "(abc)".

# parenBit("xyz(abc)123") → "(abc)"
# parenBit("x(hello)") → "(hello)"
# parenBit("(xy)1") → "(xy)"




# Given a string, return true if it is a nesting of zero or more
# pairs of parenthesis, like "(())" or "((()))".
# Suggestion: check the first and last chars, and then recur
# on what's inside them.

# nestParen("(())") → true
# nestParen("((()))") → true
# nestParen("(((x))") → false





# Given a string and a non-empty substring sub, compute
# recursively the number of times that sub appears in the
# string, without the sub strings overlapping.

# strCount("catcowcat", "cat") → 2
# strCount("catcowcat", "cow") → 1
# strCount("catcowcat", "dog") → 0






# Given a string and a non-empty substring sub, compute
# recursively if at least n copies of sub appear in the
# string somewhere, possibly with overlapping. N will be
# non-negative.

# strCopies("catcowcat", "cat", 2) → true
# strCopies("catcowcat", "cow", 2) → false
# strCopies("catcowcat", "cow", 1) → true






# Given a string and a non-empty substring sub, compute
# recursively the largest substring which starts and ends
# with sub and return its length.

# strDist("catcowcat", "cat") → 9
# strDist("catcowcat", "cow") → 3
# strDist("cccatcowcatxx", "cat") → 9




# Given an array of ints, is it possible to choose a group of
# some of the ints, such that the group sums to the given target?
# This is a classic backtracking recursion problem. Once you
# understand the recursive backtracking strategy in this problem,
# you can use the same pattern for many problems to search a space
# of choices. Rather than looking at the whole array, our convention
# is to consider the part of the array starting at index start and
# continuing to the end of the array. The caller can specify the
# whole array simply by passing start as 0. No loops are needed --
# the recursive calls progress down the array.

# groupSum(0, {2, 4, 8}, 10) → true
# groupSum(0, {2, 4, 8}, 14) → true
# groupSum(0, {2, 4, 8}, 9) → false






# Given an array of ints, is it possible to choose a group of some
# of the ints, beginning at the start index, such that the group
# sums to the given target? However, with the additional constraint
# that all 6's must be chosen. (No loops needed.)

# groupSum6(0, {5, 6, 2}, 8) → true
# groupSum6(0, {5, 6, 2}, 9) → false
# groupSum6(0, {5, 6, 2}, 7) → false






# Given an array of ints, is it possible to choose a group of some
# of the ints, such that the group sums to the given target with
# this additional constraint: If a value in the array is chosen to
# be in the group, the value immediately following it in the array
# must not be chosen. (No loops needed.)

# groupNoAdj(0, {2, 5, 10, 4}, 12) → true
# groupNoAdj(0, {2, 5, 10, 4}, 14) → false
# groupNoAdj(0, {2, 5, 10, 4}, 7) → false






# Given an array of ints, is it possible to choose a group of some
# of the ints, such that the group sums to the given target with
# these additional constraints: all multiples of 5 in the array
# must be included in the group. If the value immediately
# following a multiple of 5 is 1, it must not be chosen.
# (No loops needed.)

# groupSum5(0, {2, 5, 10, 4}, 19) → true
# groupSum5(0, {2, 5, 10, 4}, 17) → true
# groupSum5(0, {2, 5, 10, 4}, 12) → false







# Given an array of ints, is it possible to choose a group of some
# of the ints, such that the group sums to the given target, with
# this additional constraint: if there are numbers in the array
# that are adjacent and the identical value, they must either
# all be chosen, or none of them chosen. For example, with
# the array {1, 2, 2, 2, 5, 2}, either all three 2's in
# the middle must be chosen or not, all as a group.
# (one loop can be used to find the extent of the identical values).

# groupSumClump(0, {2, 4, 8}, 10) → true
# groupSumClump(0, {1, 2, 4, 8, 1}, 14) → true
# groupSumClump(0, {2, 4, 4, 8}, 14) → false






# Given an array of ints, is it possible to divide the ints into
# two groups, so that the sums of the two groups are the same.
# Every int must be in one group or the other. Write a recursive
# helper method that takes whatever arguments you like, and make
# the initial call to your recursive helper from splitArray().
# (No loops needed.)

# splitArray({2, 2}) → true
# splitArray({2, 3}) → false
# splitArray({5, 2, 3}) → true






# Given an array of ints, is it possible to divide the ints into
# two groups, so that the sum of one group is a multiple of 10,
# and the sum of the other group is odd. Every int must be in
# one group or the other. Write a recursive helper method that
# takes whatever arguments you like, and make the initial call
# to your recursive helper from splitOdd10(). (No loops needed.)

# splitOdd10({5, 5, 5}) → true
# splitOdd10({5, 5, 6}) → false
# splitOdd10({5, 5, 6, 1}) → true





# Given an array of ints, is it possible to divide the ints into
# two groups, so that the sum of the two groups is the same, with
# these constraints: all the values that are multiple of 5 must
# be in one group, and all the values that are a multiple of 3
# (and not a multiple of 5) must be in the other. (No loops needed.)

# split53({1,1}) → true
# split53({1, 1, 1}) → false
# split53({2, 4, 2}) → true