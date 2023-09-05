def print_hello_message
  puts "Hello! This is The Password Validator."
end

def get_password
  puts "Now, write your password:"
  gets.chomp
end

def run_validations(password)
  if password.length < 8
    message = "Must have at least 8 characteres."
  else
    message = "Password length valid."
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

