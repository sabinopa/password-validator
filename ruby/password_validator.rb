def print_hello_message
  puts "Hello! This is The Password Validator."
end

def get_password
  puts "Now, write your password:"
  gets.chomp
end

def run_validations(password)
  messages = []
  letters = /[a-zA-Z]/.match(password).to_a
  if password.length < 8
    messages << "Must have at least 8 characteres."
  end

  if letters.none?{|char| char == char.upcase}
    messages << "Must have at least one capital letter."
  end

  if messages.length == 0
    messages << "Valid password."
  end
  messages  
end

def validate_password
  print_hello_message 
  password = get_password
  messages = run_validations(password)
  puts messages
end

validate_password

