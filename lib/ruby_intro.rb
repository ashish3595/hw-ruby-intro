# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (0...arr.length).any? do |i| 
    arr[i+1...arr.length].any? { |num| num + arr[i] == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # \A - start of string
  # /i - ignore case
  # a-z && [^aeiou] - all alphabets except the vowels
  /\A[a-z&&[^aeiou]]/i.match?(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /\A(00?|[01]+00)\Z/.match?(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError unless price > 0 && isbn.length > 0
  end

  def isbn
    @isbn
  end
  
  def isbn=(updated_isbn)
    @isbn = updated_isbn
  end
  
  def price
    @price
  end
  
  def price=(updated_price)
    @price = updated_price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
