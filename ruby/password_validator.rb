def print_hello_message
  puts "Hello! This is The Password Validator."
end

def get_password
  puts "Now, write your password:"
  gets.chomp
end

def run_validations(password)
  messages = []

  if password.length < 8
    messages << "Must have at least 8 characters."
  end

  letters = /[a-zA-Z]/.match(password).to_a
  if letters.empty? || letters.none?{|char| char == char.upcase}
    messages << "Must have at least one capital letter."
  end

  numbers = /[0-9]/.match(password).to_a
  if numbers.empty? 
    messages << "Must have at least one number."
  end

  sequences = ['123', '234', '345', '456', '567', '678', '789', '987', '876', '765', '654', '543', '432', '321']
  if sequences.any? { |seq| password.include?(seq) }
    messages << "Cannot have numbers in sequence."
  end

  symbols = password.scan(/\W/)
  if symbols.empty?
    messages << "Must have at least one symbol (!@#$%^&*)."
  end

  if messages.empty? 
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
