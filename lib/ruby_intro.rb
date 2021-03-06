# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  
  for num in arr
    result += num
  end 
  
  return result
  
end

def max_2_sum arr
  
  #check if array is empty
  if arr.empty?
    return 0
  end
  
  #check if array has only one element
  if arr.length == 1
    return arr[0]
  end
  
  #when array has >= 2 elements return sum of two largest elements
  arr = arr.sort #sort the array
  
  result = arr.pop #pop the last element
  
  result += arr.pop #pop the last element again to get 2nd largest
  
  return result
  
end

def sum_to_n? arr, n
  #check if array is empty or of length 1
  if arr.length < 2
    return false
  end
  
  arr = arr.sort
  
  head = 0
  tail = arr.length - 1
  
  while head < tail
    sum = arr[head] + arr[tail]
    
    if (sum == n)
      return true
    end 
    
    if (sum < n)
      head += 1
    else 
      tail -= 1
    end 
    
  end 
  
  return false
  
end

# Part 2

def hello(name)
  return "Hello, "+ name
end

def starts_with_consonant? s
  
  #check if given string is empty or non-letter
  if (s.match?(/[^a-zA-Z]/) || s.length == 0)
    return false
  end
  
  #define regex for consonants
  regexVal = /\A[^aeiouAEIOU]/i  
  
  return s.match?(regexVal)
end

def binary_multiple_of_4? s
  
  #reject invalid binary numbers
  if (s.match?(/[^01]/i) || s.length == 0)  
    return false
  end 
  
  decimalRepresentation = 0
  
  #convert binary number to decimal number
  s.split("").each do |c|
    decimalRepresentation += (c == "1") ? 1 : 0
    decimalRepresentation *= 2
  end
  
  #check if given number is divisible by 4
  if (decimalRepresentation % 4 == 0) 
    return true
  end 
  
  return false
end

# Part 3

class BookInStock
  
  #constructor
  def initialize(isbn, price)
    if (isbn == nil || isbn.size == 0)
      raise ArgumentError, 'isbn is invalid'
    end
    
    if (price == nil || price <= 0)
      raise ArgumentError, 'price is invalid'
    end
    
    @isbn = isbn
    @price = price
  end
  
  #setter method for isbn
  def isbn=(isbn)
    if (isbn == nil || isbn.size == 0)
      raise ArgumentError, 'isbn is invalid'
    end
    
    @isbn = isbn
  end

  #setter method for price
  def price=(price)
    if (price == nil || price <= 0)
      raise ArgumentError, 'price is invalid'
    end
    
    @price = price
  end
  
  #getter method for isbn
  def isbn
    @isbn
  end
  
  #getter method for price
  def price
    @price
  end
  
  def price_as_string
    priceToDisplay ="%.2f" %  @price
    return "$"+priceToDisplay
  end
end
