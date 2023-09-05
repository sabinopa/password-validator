def print_hello_message
  puts "Hello! This is The Password Validator."
  puts "Depending on what you type your access will be diferent."
end

def get_password
  puts "Now, write your password:"
  password = gets.chomp
end

def run_validations
  if password.length > 8 
    puts "You are good making passwords, you got complete access!"
  elsif password.length(<= 7)  ||  password.length(>= 5)
    puts "Meh, your password is ok. You got a standard access."
  else password.length <= 4
    puts "You are not allowed to enter."
  end
end

def validate_password
  print_hello_message 
  get_password
  run_validations
end

validate_password
