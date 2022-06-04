def repeat_after_me
  puts ">> Type anything you want: "
  puts gets
end

def age_in_months
  puts ">> What is your age in years?"
  years = gets.chomp.to_i
  puts "You are #{years * 12} months old."
end

def print_something
  choice = nil
  loop do
    puts ">> Do you want to print something? (y/n)"
    choice = gets.chomp.downcase
    break if %w(y n).include?(choice)
    puts ">> Invalid input! Please enter y or n"
  end
  puts "something" if choice == 'y'
end

def ls_printer
  loop do
    input = nil
    loop do
      puts ">> How many lines should be printed? Enter a number >= 3 (Q to quit):"
      input = gets.chomp.downcase
      break if input.to_i >= 3 || input == "q"
      puts ">> That's not enough lines or not a number."
    end
    break if input == "q"
    input.to_i.times { puts "Launch School is the best!" }
  end
end

PASS = "12345"
USER = "Wylie"
def user_and_password
  loop do
    puts ">> Please enter your user name:"
    uname_input = gets.chomp
    puts ">> Please enter your password:"
    pass_input = gets.chomp
    break if pass_input == PASS && uname_input == USER
    puts ">> Authorization failed!"
  end
  puts "Welcome!"
end

def dividing_numbers
  puts ">> Please enter the numerator"
  numerator = gets.chomp
  unless valid_number?(numerator)
    puts ">> Invalid input. Only integers are allowed."
    numerator = gets.chomp
  end
  puts ">> Please enter the denominator"
  denominator = gets.chomp
  unless valid_number?(denominator)
    puts ">> Invalid input. Only integers are allowed."
    denominator = gets.chomp
  end
  puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"
end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def opposites_attract
  first_int = nil
  second_int = nil
  loop do
    puts ">> Please enter a positive or negative integer:"
    first_int = gets.chomp
    puts ">> Please enter an integer with the opposite sign of your first: "
    second_int = gets.chomp
    unless valid_number?(first_int) && valid_number?(second_int)
      puts ">> Invalid input. Only non-zero integers are allowed."
    else
      break if first_int.to_i.positive? != second_int.to_i.positive?
      puts ">> Sorry. One integer must be positive, one must be negative."
    end
  end
  puts "#{first_int} + #{second_int} = #{first_int.to_i + second_int.to_i}"
end
opposites_attract