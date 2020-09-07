# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
