# Define functions

def lowercase_text(text)
  text.downcase
end

def capitalize_text(text)
  text.upcase
end

def reverse_text(text)
  text.reverse
end

def remove_spaces(text)
  text.gsub(/\s+/, '')
end

def perform_operation(func, text = "somethings")
  result = func.call(text)
  result
end

def is_palindrome()
  #TODO
end

# Main program
puts perform_operation(method(:capitalize_text), "hello world")
puts perform_operation(method(:reverse_text), "1234")
puts perform_operation(method(:capitalize_text), "ruby and rust")
puts perform_operation(method(:remove_spaces), "ruby and rust")
puts perform_operation(method(:capitalize_text))
puts perform_operation(method(:reverse_text))
