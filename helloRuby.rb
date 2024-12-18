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
  # 'func.call(text)' invokes the method passed as 'func' by calling it with 'text'.
  # This treats the function as a first-class object, allowing dynamic execution.
  result = func.call(text)
  result
end

def is_palindrome()
  #TODO
end

# Uses send() 
# def perform_operation(method_name, text)
#   send(method_name, text)
# end
# 
# puts perform_operation(:capitalize_text, "hello world")

#def perform_operation(func, text)
#  func.call(text)
#end

puts perform_operation(lambda { |text| text.upcase }, "hello world")


# Main program
puts perform_operation(method(:capitalize_text), "hello world")
puts perform_operation(method(:reverse_text), "1234")
puts perform_operation(method(:capitalize_text), "ruby and rust")
puts perform_operation(method(:remove_spaces), "ruby and rust")
puts perform_operation(method(:capitalize_text))
puts perform_operation(method(:reverse_text))
