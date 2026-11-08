# Packages (install these packages before running this script)
library(tidyverse)
library(fixest)
library(palmerpenguins)
library(fpp3)
library(patchwork)
library(ggplot2)
library(lubridate)
# Also install palmerpenguins for the penguins example.
# Run from a folder containing cps.csv, nyc_sat.csv, and unemployment.csv.
# The Fandango download requires internet access.

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
sqrt(12/55) # Standard error of a sample mean if variance = 12 and n = 55

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
sum(multiples_of_fours[10:11]) # sum the 10th and 11th elements

#NA(s)
reviews <- c(5, NA, 4, 4, 3, 5, NA, 4, 5, 2)
mean(reviews)
median(reviews)

#Setting na.rm to TRUE will remove NA values
mean(reviews, na.rm = TRUE)
median(reviews, na.rm = TRUE)
max(reviews, na.rm = TRUE)

summary(reviews) # min, quartiles, median, mean, max, and NA count

#Logical vectors only take two values: TRUE and FALSE
ordered_takeout <- c(TRUE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE) # 10 flags for 10 reviews

as.numeric(ordered_takeout) #assigns TRUE values 1, and FALSE values 0

sum(ordered_takeout) #returns the numbers of TRUEs

reviews == 5 # TRUE for five-star reviews; NA stays NA
reviews <= 3 # TRUE for reviews of three stars or fewer
!(reviews == 5) #non-five star reviews

(reviews == 5) & (reviews == 4) # cannot be both 4 and 5; missing values remain NA
(reviews == 5) | (reviews == 4) # TRUE for four- or five-star reviews
reviews >= 4 # reviews of four stars or more

reviews[ordered_takeout] # takeout orders (one logical flag per review)
take_out <- reviews[ordered_takeout]
reviews[!ordered_takeout] # dine-in orders
dine_in <- reviews[!ordered_takeout]

#Exercise: 3.1.4.1
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

#Exercise: 3.1.5.1
2*x + y + 1


#sorting data
sort(rebounds, decreasing = TRUE)
order(rebounds, decreasing = TRUE) #row indices
order(rebounds, decreasing = TRUE)[1] #index of maximum number (1530)

#Exercise: 3.1.6.1

height <- c(64, 65, 64, 66, 67, 64, 67, 66, 66, 67, 70, 66, 70, 68, 68, 67, 69, 67, 67, 69)
length(height) #confirm there are n observations
height[1:4] #subset of first four vectors
tail(height, 2) #subset of last two vectors
height[(length(height)-1):length(height)]

summary(height) #five number summary
mean(height)
sd(height)
sort(height, decreasing = TRUE) #tallest to shortest

#Dataframes
data("penguins", package = "palmerpenguins") # requires palmerpenguins installed
head(penguins) #prints out first 6 rows of observations
str(penguins)
print(paste0(nrow(penguins), " obs. of ", ncol(penguins), " variables"))
nrow(penguins)
ncol(penguins)
dim(penguins) # 344 rows (observations) and 8 columns (variables)

#Exercise: 4.0.0.1
#A row represents a single observations, containing all the data for one penguin.
#A column represents a single attribute or variable measured across all penguins.

penguins$species
penguins[1:5] #first five columns
penguins[1:5, ] # first five rows, with all columns
penguins[, "species"] # species column (tibble keeps it as a one-column tibble)
penguins[1:5, "species"] #first five rows, just species column
penguins[1:5, c("species", "island")] #first five rows, just species & island columns
penguins[1:6, "island"] #first six observations with the variable 'island'
penguins[1:6, ]$island
penguins$island[1:6]

#Exercise: 4.2.0.1
unique(penguins$species)
table(penguins$species)
penguins[1:5] #will grab the first five columns instead of rows

#'==' is used to compare a vector to a value (or set of values)
on_torgersen <- penguins$island == "Torgersen"
on_torgersen

penguins[penguins$island == "Torgersen", ]
penguins[penguins$island == "Torgersen", ]$body_mass_g
penguins$island == "Torgersen" & penguins$sex == "male"
penguins$island == "Torgersen" | penguins$sex == "male"


#Exercise: 4.3.0.1
penguins$sex == "male" & penguins$body_mass_g > 3500
table(penguins$species)
unique(penguins$species)
#Which species has the heaviest penguins?

#Exercise: 4.3.0.2
penguins_ad <- penguins[penguins$species == "Adelie", ]
penguins_gent <- penguins[penguins$species == "Gentoo", ]
penguins_chin <- penguins[penguins$species == "Chinstrap", ]

mean(penguins_ad$bill_length_mm, na.rm = TRUE)
mean(penguins_gent$bill_length_mm, na.rm = TRUE)
mean(penguins_chin$bill_length_mm, na.rm = TRUE)

penguins$body_mass_lbs <- 0.00220462 * penguins$body_mass_g # convert grams to pounds

#Exercise: 4.4.1 - Calculating Variance and Standard Deviation
penguins$body_mass_lb <- penguins$body_mass_lbs # reuse the existing converted column
penguins_clean <- penguins[!is.na(penguins$body_mass_lb), ]
n <- nrow(penguins_clean)
x_bar <- sum(penguins_clean$body_mass_lb) / n
sq_deviations <- (penguins_clean$body_mass_lb - x_bar)^2
sum_sq_deviations <- sum(sq_deviations)
variance_by_hand <- sum_sq_deviations / (n - 1)
sd_by_hand <- sqrt(variance_by_hand)
variance_by_hand
sd_by_hand # compare with sd(penguins_clean$body_mass_lb)

fandango <- read.csv("https://raw.githubusercontent.com/kylebutts/UARK_4753/refs/heads/main/R_Labs/Lab_02/data/fandango_score_comparison.csv")
head(fandango)


#Sorting Dataframes
penguins[order(penguins$body_mass_g), ]
penguins[order(penguins$body_mass_g), ] # ascending body mass
penguins[order(penguins$body_mass_g), ] # equivalent ordering
penguins[order(penguins$species, penguins$body_mass_g), ] # species, then body mass

# Exercise: 4.6.0.1 (partial; add remaining questions if needed)
summary(fandango[, c("RottenTomatoes", "Metacritic", "IMDB")])
top_users <- subset(fandango, RottenTomatoes_User > 90)
head(top_users)

#Plotting in R
hist(penguins$body_mass_lb) #hist() is used for plotting one variable
plot(penguins$flipper_length_mm, penguins$body_mass_lb) #plot() is used to make scatter plots for two variables
#Exercise: 5.1.0.1
hist(
  penguins$body_mass_lb,
  probability = TRUE,
  col = "lightgray",
  xlab = "Body Mass (lb)",
  main = "Histogram of Penguins' Body Mass"
)

hist(
  penguins_ad$bill_length_mm
)

hist(
  penguins_chin$bill_length_mm
)

plot(
  penguins$flipper_length_mm,
  penguins$body_mass_lb,
  main = "Scatterplot of flipper length and body mass"
)

plot(
  body_mass_lb ~ flipper_length_mm,
  data = penguins,
  main = "Scatter plot of flipper length and body mass"
)

##ggplot2
theme_set(
  theme_minimal() + theme(
    plot.title.position = "plot",
    plot.caption = element_text(hjust = 0, face = "italic"),
    plot.caption.position = "plot",
    legend.position = "top",
    legend.title.position = "top",
    legend.location = "plot",
    legend.margin = margin(0, 0, 5, 0),
    legend.justification = c(0, 1),
    legend.background = element_rect(fill = "white", color = NA),
    legend.key.spacing.x = unit(12, "pt")
  ))
ggplot() +
  geom_histogram(
    data = penguins,
    aes(x = body_mass_lb, color = species, fill = species),
    alpha = 0.3
  ) +
  labs(
    title = "Histogram of Penguin Body Mass, by species",
    x = "Weight (in lb.)",
    color = "Species",
    fill = "Species"
  ) +
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  scale_fill_manual(values = c("darkorange", "purple", "cyan4")) +
  theme_minimal()

ggplot() +
  geom_point(
    data = penguins,
    aes(x = flipper_length_mm, y = body_mass_lb, color = species)
  ) +
  labs(
    title = "Scatter Plot of Penguin Data, by species",
    x = "Flipper Length (in mm)",
    y = "Weight (in lb.)",
    color = "Species",
    fill = "Species"
  ) +
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  theme_minimal()

ggplot(
  data = penguins,
  aes(
    x = bill_length_mm,
    y = bill_depth_mm,
    group = species
  )
) +
  geom_point(
    aes(color = species, shape = species),
    size = 3,
    alpha = 0.8
  ) +
  geom_smooth(method = "lm", se = FALSE, aes(color = species)) +
  theme_minimal() +
  scale_color_manual(values = c("darkorange", "purple", "cyan4")) +
  labs(
    title = "Penguin bill dimensions",
    x = "Bill length (mm)",
    y = "Bill depth (mm)",
    color = NULL,
    shape = NULL
  ) 

#Regressions in R
nyc <- read.csv("nyc_sat.csv") # uploaded dataset filename; adjust for your GitHub folder
str(nyc)
plot(latitude ~ longitude, data = nyc)

#Exercise: 6.0.0.1
hist(
  nyc$average_score_sat_math
)

hist(
  nyc$average_score_sat_reading
)

print(nyc$percent_white) # percentages are initially character strings such as "12%"

plot(
  average_score_sat_math~average_score_sat_reading,
  data = nyc,
  xlab = "Average SAT Reading Scores", ylab = "Average SAT Math Scores"
) # Key takeaway: schools with higher average reading scores tend to have higher average math scores; this is association, not causation.

nyc$percent_white <- as.numeric(gsub("%", "", nyc$percent_white))
nyc$percent_black <- as.numeric(gsub("%", "", nyc$percent_black))
nyc$percent_hispanic <- as.numeric(gsub("%", "", nyc$percent_hispanic))
nyc$percent_asian <- as.numeric(gsub("%", "", nyc$percent_asian))
nyc$percent_tested <- as.numeric(gsub("%", "", nyc$percent_tested))

vars <- nyc[, c("average_score_sat_math", "average_score_sat_reading")]
vars <- na.omit(vars) # keep complete math/reading pairs
x <- vars$average_score_sat_math # predictor (math score)
y <- vars$average_score_sat_reading # outcome (reading score)
sum(is.na(x)) + sum(is.na(y)) #verify no NAs

ybar <- mean(y)
xbar <- mean(x)
var_x <- var(x)
cov_x_y <- cov(x, y)

beta_1_hat <- cov_x_y / var_x
beta_0_hat <- ybar - xbar * beta_1_hat

plot(
  average_score_sat_reading ~ average_score_sat_math,
  data = nyc
)
abline(
  a = beta_0_hat, b = beta_1_hat, 
  col = "purple", lwd = 2
)

isTRUE(all.equal(ybar, beta_0_hat + beta_1_hat * xbar)) # check equality within floating-point tolerance

#Exercise: 6.1.1.1
beta_0_hat + beta_1_hat * 600 #557.8668

#lm() function is used for linear models

est_lm <- lm(
  average_score_sat_reading ~ average_score_sat_math,
  data = nyc
)
print(est_lm)

cat(paste0("\nbeta_0_hat = ", round(beta_0_hat, 4)))
cat(paste0("\nbeta_1_hat = ", round(beta_1_hat, 4)))
summary(est_lm)

# fixest::feols() fits OLS here, like lm(); defaults and inference options can differ
est <- feols(
  average_score_sat_reading ~ average_score_sat_math,
  data = nyc
)
print(est)

# Prediction (regression fitted values; not necessarily time-series forecasting)

# Predict yhat in-sample
nyc$yhat <- predict(est, newdata = nyc)

plot(
  average_score_sat_reading ~ average_score_sat_math, data = nyc
)
abline(coef = coef(est), col = "orange")
points(
  yhat ~ average_score_sat_math, data = nyc, 
  col = "orange"
)

predict_df <- data.frame(average_score_sat_math = seq(300, 700, by = 10))
predict_df$yhat <- predict(est, newdata = predict_df)
plot(yhat ~ average_score_sat_math, data = predict_df)

#Exercise: 6.2.1.1
predict_white <- feols(
  percent_white~average_score_sat_math,
  data = nyc
)

#x is the predictor variable, y is outcome variable

print(predict_white) #A one-point increase in average SAT math scores is associated with a 0.112 percentage-point increase in the percentage of white students at a school, on average.

plot(
  percent_white ~ average_score_sat_math,
  data = nyc,
  xlab = "Average SAT Math Score",
  ylab = "White Student (%)",
  main = "SAT Math Scores and Percentage of White Students",
  col = "gray"
)
abline(
  coef(predict_white),
  col = "orange",
  lwd = 2
)

feols(average_score_sat_math ~ 0 + i(borough), data = nyc)
feols(average_score_sat_math ~ i(borough), data = nyc) #Bronx is the omitted (reference) variable.
feols(average_score_sat_math ~ i(borough, ref = "Manhattan"), data = nyc) #Manhattan is now our omitted (reference) variable.

workers <- read.csv("cps.csv")
str(workers)
workers$college <- 1 - workers$nodegree

feols(re78 ~ i(black, college), data = workers) # interactions of black indicator with college status #re78 - Real Earnings in 1978
feols(re78 ~ i(black) + i(black, age), data = workers)

#Exercise: 6.2.3.1
feols(re75 ~ i(black) + i(hispanic), data = workers) # reference: neither Black nor Hispanic
feols(re75 ~ i(married), data = workers) # married group has about $8,080 higher mean 1975 earnings; not causal

#Working with Times
uark_enrollment <- data.frame(
  year = c(2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024),
  full_time = c(19508, 20379, 21047, 21415, 21668, 22144, 22602, 22193, 22070, 23282, 25214, 28426, 29886),
  part_time = c(5029, 4962, 5190, 5339, 5526, 5414, 5176, 5366, 5492, 5786, 5722, 3714, 3724)
)
uark_enrollment$total <-
  uark_enrollment$full_time + uark_enrollment$part_time

# Make sure the data is sorted by year
uark_enrollment <- uark_enrollment[order(uark_enrollment$year), ]

plot(
  total ~ year,
  data = uark_enrollment
)

# Use type = "l" (lowercase L) for lines, or type = "b" for points and lines
plot(total ~ year, data = uark_enrollment, type = "l")
plot(total ~ year, data = uark_enrollment, type = "b")

# Arkansas' 2023 football games
football <- data.frame(
  date = c(
    "11-11-2023", "11-04-2023", "09-23-2023", "09-02-2023", "10-07-2023",
    "09-16-2023", "09-09-2023", "10-21-2023", "11-24-2023", "10-14-2023",
    "11-18-2023", "09-30-2023"
  ),
  month = c(11, 11, 9, 9, 10, 9, 9, 10, 11, 10, 11, 9),
  day = c(11, 4, 23, 2, 7, 16, 9, 21, 24, 14, 18, 30),
  year = rep(2023, 12L),
  school = rep("Arkansas", 12L),
  opponent = c(
    "Auburn", "Florida", "(12) LSU", "Western Carolina", "(16) Ole Miss", "BYU",
    "Kent State", "Mississippi State", "(10) Missouri", "(11) Alabama",
    "Florida International", "Texas A&M"
  ),
  result = c("L", "W", "L", "W", "L", "L", "W", "L", "L", "L", "W", "L"),
  pts = c(10, 39, 31, 56, 20, 31, 28, 3, 14, 21, 44, 22),
  pts_opponent = c(48, 36, 34, 13, 27, 38, 6, 7, 48, 24, 20, 34)
)

plot(pts ~ day, data = football)
plot(football$month * 30 + football$day, football$pts) # rough month/day ordering, NOT actual days since Jan 1

today <- today()
class("2025-08-22") # character; use class(ymd("2025-08-22")) for a Date
class(today)

# ISO 8601 uses year-month-day (YYYY-MM-DD) for calendar dates
as.numeric(today)

tomorrow <- today + 1
two_days_ago <- today - 2
cat(paste0("Today is ", today, ". Tomorrow is ", tomorrow, "."))

last_4_classes <- ymd(c("2025-10-22", "2025-10-20", "2025-10-15", "2025-10-13"))
print(last_4_classes)

football$date <- mdy(football$date)
football$date
plot(pts ~ date, data = football)
plot(pts ~ date, data = football, type = "b")

football <- football[order(football$date), ]

## equivalent to 
## football <- sort_by(football, football$date)
## football <- sort_by(football, football$year, football$month, football$day)
## football <- football[order(football$date), ]
plot(pts ~ date, data = football, type = "b")

year(football$date)
month(football$date)
month(football$date, label = TRUE)
day(football$date)
mday(football$date)
yday(football$date)
wday(football$date)
wday(football$date, label = TRUE)
wday(football$date, week_start = 1) # Monday = 1
quarter(football$date)
quarter(football$date, type = "year.quarter")

table(football$result) # count wins and losses; table(football) would create a huge multiway table

unemployment <- read.csv("unemployment.csv")

unemployment$date <- ymd(unemployment$date)
unemployment <- unemployment[order(unemployment$date), ]

plot(unrate ~ date, data = unemployment, type = "l")

## Number of time-periods
T <- nrow(unemployment) #number of time-periods

## Get y_{t-1}
unemployment$unrate_lag1 <- 
  c(NA, unemployment$unrate[1:(T - 1)])

unemployment$unrate_lag2 <- c(NA, NA, unemployment$unrate[1:(T - 2)]) #y_{t-2}
unemployment$unrate_lag3 <- c(NA, NA, NA, unemployment$unrate[1:(T - 3)]) #y_{t-3}
unemployment$unrate_lag12 <- c(rep(NA, 12), unemployment$unrate[1:(T - 12)]) #y_{t-12}, last-years values

cor(
  x = unemployment$unrate,
  y = unemployment$unrate_lag2,
  use = "complete.obs" # omit pairs with missing lagged values
)

cor(
  x = unemployment$unrate,
  y = unemployment$unrate_lag1,
  use = "complete.obs"
)

unemployment$quarter <- quarter(unemployment$date)
unemployment$quarter <- paste0("Q", unemployment$quarter) # e.g. Q1, Q2

#Time-Series Regression
est <- feols(
  unrate ~ 0 + i(quarter(date)),
  data = unemployment,
  vcov = "hc1"
)
etable(est)

est_w_intercept <- feols(
  unrate ~ 1 + i(quarter(date)),
  data = unemployment, vcov = "hc1"
)
etable(est, est_w_intercept)

model_linear_trend <- feols(
  unrate ~ date,
  data = unemployment
)
unemployment$unrate_linear_trend <- predict(model_linear_trend)
plot(unrate ~ date, data = unemployment, type = "l")
lines(unrate_linear_trend ~ date, data = unemployment, col = "blue")


