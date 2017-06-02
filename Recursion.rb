def sum_to(n)
  return n if n == 1
  return nil if n < 0
  n + sum_to(n - 1)
end


puts sum_to(5)  # => returns 15
puts sum_to(1)  # => returns 1
puts sum_to(9)  # => returns 45
puts sum_to(-8)  # => returns nil
puts "------------"


def add_numbers(arr)
  return arr.first if arr.length == 1
  return nil if arr.length < 1
  (add_numbers(arr[1..-1])) + arr.first
end


puts add_numbers([1,2,3,4]) # => returns 10
puts add_numbers([3]) # => returns 3
puts add_numbers([-80,34,7]) # => returns -39
puts add_numbers([]) # => returns nil
puts "------------"


# The Gamma Function is defined Γ(n) = (n-1)!.
def gamma_fnc(n)
  return n if n == 1
  return nil if n < 1
  (n - 1) * gamma_fnc(n - 1)
end


puts gamma_fnc(0)  # => returns nil
puts gamma_fnc(1)  # => returns 1
puts gamma_fnc(4)  # => returns 6
puts gamma_fnc(8)  # => returns 5040
puts "------------"



def ice_cream_shop(flavors, favorite)
  return false if flavors.nil?
  return true if flavors.first == favorite
  ice_cream_shop(flavors[1..-1], favorite)
end


puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
puts ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
puts ice_cream_shop([], 'honey lavender')  # => returns false
puts "------------"



def reverse(string)
  return string[0] if string.length <= 1
  reverse(string[1..-1]) + string[0].reverse
end


# Test Cases
puts reverse("house") # => "esuoh"
puts reverse("dog") # => "god"
puts reverse("atom") # => "mota"
puts reverse("q") # => "q"
puts reverse("id") # => "di"
puts reverse("") # => ""
puts "------------"
