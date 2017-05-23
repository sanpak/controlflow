# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  result = ""
  (0...str.length).each do |idx|
    result << str[idx] if str[idx] != str[idx].downcase
  end
  result
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  middle_left = str.length / 2
  middle_right = middle_left - 1
  if str.length % 2 == 0
    return "#{str[middle_right]}#{str[middle_left]}"
  else
    return "#{str[middle_left]}"
  end
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  count = 0
  str.each_char do |letter|
    if VOWELS.include?(letter)
      count += 1
    end
  end
  count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  result = 1
  (2..num).each do |number|
    result *= number
  end
  result
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  result = ""
  (0...arr.length).each do |idx|
    if idx != arr.length - 1
      result << arr[idx] << separator
    else
      result << arr[idx]
    end
  end

  return result

end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  (0...str.length).each do |idx|
    if idx % 2 == 0
      str[idx] = str[idx].downcase
    else
      str[idx] = str[idx].upcase
    end
  end
  str
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  result = []
  str = str.split(" ")
  str.each do |word|
    if word.length > 4
      result << word.reverse
    else
      result << word
    end
  end
  result.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  array = []
  (1..n).each do |num|
    if num % 15 == 0
      array << "fizzbuzz"
    elsif num % 3 == 0
      array << "fizz"
    elsif num % 5 == 0
      array << "buzz"
    else
      array << num
    end
  end
  return array
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr = arr.reverse

end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  return false if num == 1
  (2...num).each do |number|
    return false if num % number == 0
  end
  return true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  array = []
  (1..num).each do |number|
    array << number if num % number == 0
  end
  array.sort!
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  array = []
  (1..num).each do |number|
    array << number if prime?(number) && num % number == 0
  end
  array.sort!
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length

end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  even_arr = arr.select { |n| n % 2 == 0 }
  odd_arr = arr.reject { |n| n % 2 == 0 }

  return even_arr[0] if even_arr.length == 1
  return odd_arr[0]
end
