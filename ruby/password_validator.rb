def hello_message
  puts "Hello! This is The Password Validator."
  puts "Depending on what you type your access will be diferent."
end

def email_register
  puts "First, write your e-mail: "
  email = gets.chomp
end

def password
  puts "Now, write your password:"
  password = gets.chomp

  if password.length > 8 
    puts "You are good making passwords, you got complete access!"
  elsif password.length <= 7 || >= 5
    puts "Meh, your password is ok. You got a standard access."
  else password.length <= 4
    puts "You are not allowed to enter."
  end
end

def password_validator
  hello_message
  email_register  
  password
end

password_validator