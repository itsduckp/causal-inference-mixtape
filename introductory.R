#R as a Calculator
1 + 1 #addition
2 / 4 #division
3^2 #exponentiation
5 + 2 * 3 #PEMDAS
13 %% 2 #remainder
13 %/% 2 #integer division operator

#Exercise: 2.0.0.1
mean(c(7.7, 8.2, 8.3, 7.6, 9.2, 7.4, 11.1))

#function_name(arguments)
sqrt(16) #square root
abs(-4) #absolute value
factorial(5) #factorial

#Exercise: 2.1.0.1
sqrt(147)
log(10)
sqrt(12/55) #Standard Deviation: Var(x) = 12, and n = 55

#Variables
x <- 5
y <- 20

x + y

#Exercise: 2.2.0.1
my_name <- "Duc Pham"
my_name

#Exercise: 2.3.0.1
mean_baby_weight <- mean(c(7.7, 8.2, 8.3, 7.6, 9.2, 7.4, 11.1))
mean_baby_weight
print("\U1F919") #emojis

#Vectors
rebounds <- c(260, 114, 252, 310, 165, 236, 148, 336, 941, 127, 384, 278, 300, 6, 136, 145, 233, 142, 420, 35, 11, 161, 485, 1, 830, 81, 112, 16, 63, 513, 162, 296, 434, 239, 22, 269, 235, 222, 485, 245, 578, 162, 281, 344, 39, 99, 82, 79, 476, 3, 69, 84, 201, 52, 223, 244, 34, 728, 5, 423, 286, 346, 324, 549, 580, 152, 401, 58, 95, 187, 618, 189, 69, 184, 34, 101, 36, 7, 472, 78, 41, 631, 259, 12, 760, 33, 410, 672, 70, 227, 272, 247, 289, 63, 96, 500, 497, 739, 188, 178, 491, 1, 298, 202, 211, 307, 227, 439, 253, 24, 740, 168, 921, 61, 210, 213, 209, 150, 145, 220, 26, 144, 286, 190, 56, 182, 580, 105, 402, 660, 260, 118, 0, 231, 11, 184, 69, 432, 807, 257, 762, 24, 42, 342, 95, 185, 77, 310, 170, 447, 98, 271, 8, 41, 99, 85, 102, 593, 275, 24, 10, 206, 407, 51, 184, 0, 98, 10, 305, 43, 112, 30, 80, 312, 292, 292, 899, 182, 317, 511, 665, 78, 633, 314, 32, 11, 49, 205, 402, 296, 46, 26, 261, 429, 451, 66, 546, 206, 35, 5, 63, 161, 227, 394, 308, 118, 92, 249, 691, 257, 85, 220, 483, 233, 909, 744, 564, 208, 573, 25, 243, 16, 2, 30, 132, 34, 468, 460, 330, 268, 1, 252, 318, 453, 473, 33, 82, 494, 26, 450, 54, 110, 145, 870, 670, 111, 1, 179, 448, 700, 74, 845, 30, 27, 639, 15, 97, 705, 96, 54, 295, 312, 556, 39, 551, 426, 45, 258, 8, 233, 564, 630, 536, 5, 255, 95, 173, 11, 51, 106, 71, 393, 317, 149, 394, 301, 319, 19, 147, 257, 336, 350, 19, 416, 829, 2, 219, 1530, 171, 124, 54, 47, 296, 30, 26, 96, 168, 14, 118, 770, 310, 66, 934, 42, 415, 204, 634, 202, 301, 391, 177, 81, 256, 116, 188, 76, 417, 1, 28, 435, 191, 449, 270, 265, 5, 1, 0, 47, 183, 0, 22, 247, 0, 381, 19, 2, 862, 253, 469, 55, 37, 90, 246, 78, 88, 512, 0, 101, 265, 28, 238, 223, 257, 372, 21, 236, 94, 81, 295, 206, 704, 454, 607, 145, 129, 282, 405, 247, 1258, 15, 269, 9, 240, 260, 305, 75)
rebounds[1] #where [#] is the i-th element we want to grab
rebounds[c(1,2)]
rebounds[1:5] #a:b generates a, a + 1,...,b
rebounds[1:5] + 1
rebounds[1:5] / 12 #dozens of rebounds
length(rebounds) #number of elements in a vector

#Summarizing Vectors
mean(rebounds) #mean
sd(rebounds) #standard deviation
var(rebounds) #variance
max(rebounds) #extreme - maximum
min(rebounds) #extreme - minimum
sqrt(var(rebounds)) #chaining functions - standard deviation

quantile(rebounds, c(0.1, 0.5, 0.9))

hist(rebounds) #histogram - distribution of vectors

#Exercise: 3.1.1.1
multiples_of_fours <- seq(from = 4, to = 100, by = 4)
multiples_of_fours[19] #19th element of sequence
multiples_of_fours[sum(10:11)] #sum of 10th and 11th sequence

#NA(s)
reviews <- c(5, NA, 4, 4, 3, 5, NA, 4, 5, 2)
mean(reviews)
median(reviews)

##Setting na.rm to TRUE will remove NA values
mean(reviews, na.rm = TRUE)
median(reviews, na.rm = TRUE)
max(reviews, na.rm = TRUE)

summary(reviews) #five number summary

#Logical vectors only take two values: TRUE and FALSE
ordered_takeout <- c(TRUE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE)

as.numeric(ordered_takeout) #assigns TRUE values 1, and FALSE values 0

sum(ordered_takeout) #returns the numbers of TRUEs

reviews == 5 #(assigns TRUE to five star reviews)
reviews <= 3 #(assigns TRUE to three-lower star reviews)
!(reviews == 5) #non-five star reviews

(reviews == 5) & (reviews == 4) #returns reviews that are four and five stars (not possible)
(reviews == 5) | (reviews == 4) #returns TRUE for reviews either four or five starts
reviews >= 4 #reviews 4 stars or less

reviews[ordered_takeout] #takeout orders
take_out <- reviews[ordered_takeout]
reviews[!ordered_takeout] #dine-in orders
dine_in <- reviews[!ordered_takeout]

mean(reviews[ordered_takeout], na.rm = TRUE) #average review for takeout orders
mean(take_out, na.rm = TRUE)

x <- c(1, 2, 3)
y <- c(5, 5, 5)

x + y #vectorized operations
x^2
x + 2

x + rep(2, 3)
exp(x)
log(x)
sqrt(x^2)
2*x + y + 1


#sorting data
sort(rebounds, decreasing = TRUE)