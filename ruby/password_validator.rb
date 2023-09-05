def print_hello_message
  puts "Hello! This is The Password Validator."
end

def get_password
  puts "Now, write your password:"
  gets.chomp
end

def run_validations(password)
  letters = /[a-zA-Z]/.match(password).to_a
  if password.length < 8
    message = "Must have at least 8 characteres."
  elsif letters.none?{|char| char == char.upcase}
    message = "Must have at least one capital letter."
  else
    message = "Valid password."
  end
  message  
end

def validate_password
  print_hello_message 
  password = get_password
  message = run_validations(password)
  puts message
end

validate_password

