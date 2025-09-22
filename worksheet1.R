# 1 Set up vector age
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 
         35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 
         50, 37, 46, 25, 17, 37, 42, 53, 41, 51, 
         35, 24, 33, 41)
# a How many data points?
length(age)
#output [1] 34

# 2 Reciprocal of age
1 / age
#output [1] 0.02941176 0.03571429 0.04545455 0.02777778 0.03703704 0.05555556
#[7] 0.01923077 0.02564103 0.02380952 0.03448276 0.02857143 0.03225806
#[13] 0.03703704 0.04545455 0.02702703 0.02941176 0.05263158 0.05000000
#[19] 0.01754386 0.02040816 0.02000000 0.02702703 0.02173913 0.04000000
#[25] 0.05882353 0.02702703 0.02380952 0.01886792 0.02439024 0.01960784
#[31] 0.02857143 0.04166667 0.03030303 0.02439024

# 3 new_age
new_age <- c(age, 0, age)
length(new_age)
#The new_age vector is just the age vector, followed by a 0, followed by the age vector again.

# 4 Sort values
sort(age)
sorted_age <- sort(age)
sorted_age
#output
#[1] 17 18 19 20 22 22 24 25 27 27 28 29 31 33 34 34 35 35 36 37 37 37 39 41 41 42 42 47

# 5 Min and Max
min_age<-min(age)
min_age 
max_age<-max(age)
max_age
#output
#[1] 17
#[1] 57


# 6 Vector data
data <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5,
          2.3, 2.5, 2.3, 2.4, 2.7)

# a How many data points?
length(data)
#output [1] 12

# 7 Double every value
2 * data

#output [1] 4.8 5.6 4.2 5.0 4.8 4.4 5.0 4.6 5.0 4.6 4.8 5.4
#The original data vector remains unchanged, and R creates a new vector containing the doubled values.


# 8 Sequences
seq(1, 100)         # 8.1
seq(20, 60)         # 8.2
mean(20:60)         # 8.3
sum(51:91)          # 8.4
seq(1, 1000)        # 8.5
#a Total number of data points from 8.1 to 8.4: 100 + 41 + 41 + 41 = 223
#R Code and Output from 8.1 to 8.4
# 8.1 Integers from 1 to 100
seq_1_100 <- 1:100
length(seq_1_100)
seq_1_100

# 8.2 Numbers from 20 to 60
seq_20_60 <- 20:60
length(seq_20_60)
seq_20_60

# 8.3 Mean of numbers from 20 to 60
mean(seq_20_60)

# 8.4 Sum of numbers from 51 to 91
sum(51:91)

# output in 8.1
#[1] 100
#[1] 1 2 3 ... 100

# output in 8.2
#[1] 41
#[1] 20 21 22 ... 60

# output in 8.3
#[1] 40

# output in 8.4
#[1] 2941

# 9 Integers not divisible by 3, 5, 7
vec_filtered <- Filter(function(i) { all(i %% c(3, 5, 7) != 0) }, seq(100))
print(vec_filtered)

#output[1] 1 2 4 8 11 13 16 17 19 22 23 26 29 31 32 34 37 38 41 43 44 46 49 52 53 56 58 59 61 64 67 68 71 73 74 76 79 82 83 86 88 89 92 94 97 98

# 10 Sequence backwards
seq_backwards <- 100:1
seq_backwards
#output [1] 100 99 98 97 96 95 94 93 92 91 90 89 88 87 86 85 84 83 82 81 80 79 78 77 76 75 74 73 72 71 70
#[31] 69 68 67 66 65 64 63 62 61 60 59 58 57 56 55 54 53 52 51 50 49 48 47 46 45 44 43 42 41 40
#[61] 39 38 37 36 35 34 33 32 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10
#[91] 9 8 7 6 5 4 3 2 1

# 11 Multiples of 3 or 5 below 25
nums <- 1:24
multiples <- nums[nums %% 3 == 0 | nums %% 5 == 0]
multiples
sum(multiples)

# 12 Example with braces (incorrect way)
# {x <- 0
#  x + 5 +}   # error

# Correct way
x <- 0
x + 5

# 13 Vector score
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score[2]
score[3]
score[2:3]
#output 
#[1] 86   # score[2]
#[1] 92   # score[3]
#[1] 86 92   # score[2:3]

# 14 Vector with NA
a <- c(1, 2, NA, 4, NA, 6, 7)
print(a, na.print = "-999")
#output [1]    1    2 -999    4 -999    6    7

# 15 Changing class
x <- c(2, 3, 4)
class(x)        # numeric
class(x) <- "foo"
class(x)        # foo

# Additional Example
name <- readline(prompt="Input your name: ")
age  <- readline(prompt="Input your age: ")
print(paste("My name is", name, "and I am", age, "years old."))
print(R.version.string)


