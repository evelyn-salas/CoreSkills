#################
#### PART 1 #####
#################

#1
my_age <- 19

#2
my_name <- "Evelyn"

#3
# Puts "Hello, may name is", a name, "and I am", an age, and "years old" 
#into a sentence.
make_introduction <- function(my_name, my_age) {
  greeting <- paste("Hello, my name is", my_name, "and I am", my_age, "years old.")
  print(greeting)
}
make_introduction(my_name, my_age)

#4
my_intro <- make_introduction(my_name, my_age)
print(my_intro)

#5  
casual_intro <- sub("Hello, my name is", "Hey I'm", my_intro)
print(casual_intro)

#install.packages("stringr")
#library("stringr")

#6
capital_intro <- str_to_title(my_intro)
print(capital_intro)

#7
intro_e_count <- str_count(my_intro, "e")
print(intro_e_count)

#################
#### PART 2 #####
#################

#1
books <- c("1984", "Chronicle of a Death Foretold", "The 6th Extinction", "The Sympathizer", "The Defining Decade", "12 Rules for Life")
print(books)

#2
top_three_books <- books[1:3]
print(top_three_books)

#3
book_reviews <- paste(books, collapse = " is a great read! ")
print(book_reviews)

#4
# Removes a book from the group (specified by it's index number)
remove_book <-function(books, index_num ) {
  return(books[-(index_num)])
}

#5
books_without_5 <- remove_book(books, 5)
print(books_without_5)

#6
long_titles <- books[str_length(books) > 15]
print(long_titles)

#################
#### PART 3 #####
#################

#1
numbers <- seq(1:201)
print(numbers)

#2
squared_numbers <- numbers*numbers
print(squared_numbers)

#3
squared_mean <- mean(squared_numbers)
print(squared_mean)

#4
squared_median <- median(squared_numbers)
print(squared_median)

#5 
perfect_squares <- numbers[sqrt(numbers) == round(sqrt(numbers))]
print(perfect_squares)


#################
#### PART 4 #####
#################

#1
spring_break <- as.Date("2020-03-21")

#2
class(spring_break)

#3
today <- as.Date("2020-01-22")

#4

days_to_break <- spring_break - today
print(days_to_break)

#5 
# Changes the year of the specified date into the year of your choice 
#by removing the old year and pastng the month and date with the new year.
change_year <- function(date_type, year){
  date_as_string <- as.character(date_type)
  date_without_year <- substr(date_as_string, 5, 10)
  new_date_as_string <- paste0(year, date_without_year)
  new_date_as_date <- as.Date(new_date_as_string)
  return(new_date_as_date)
}

#6
spring_break_2025 <- change_year(spring_break, 2025)
print(spring_break_2025)
class(spring_break_2025)

#7 
# Determines whether the date specified has passed by comparing it to 
#the current date and checking if the difference between the specified date 
#and the current date is more than zero
date_has_passed <- function(date_type) {
  current_date <- as.Date("2020-01-22")
  (current_date - date_type) > 0
}

#8
date_has_passed(as.Date("2020-01-23"))

#9
birthdays <- list(Mom = as.Date("1977-03-14"), Brother = as.Date("2003-08-02"), Me = as.Date("2000-03-15"))
print(birthdays)

#10
# Changes the year of a birthday to the current year, or the next year 
#if it already passed
get_next_birthday <- function(date_type) {
  change_year(date_type, 2020)
  date_has_passed(date_type)
  if(TRUE) {
    change_year(date_type, 2021)
  }
  return(change_year(date_type, 2020))
}

#11
get_next_birthday(birthdays$Me)

#12
next_birthdays <- lapply(birthdays,get_next_birthday) 
print(next_birthdays)
