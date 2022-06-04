# loops 2
def even_or_odd
  (1..5).each do |num|
    puts "#{num} is even!" if num.even?
    puts "#{num} is odd!" if num.odd?
  end
end

def catch_the_number
  loop do
    number = rand(100)
    puts number
    break if number.between?(0, 10)
  end
end

def conditional_loop
  process_the_loop = [true, false].sample
  if process_the_loop
    loop do
      puts "The loop was processed."
      break
    end
  else
    puts "The loop wasn't processed."
  end
end

def get_the_sum
  loop do
    puts "What does 2 + 2 equal?"
    answer = gets.chomp.to_i
    if answer == 4
      puts "That's correct!"
      break
    end
    puts "Wrong answer, try again!"
  end
end

def insert_numbers
  numbers = []
  loop do
    puts "Enter any number:"
    input = gets.chomp.to_i
    numbers << input
    break if numbers.length == 5
  end
  puts numbers
end

def empty_the_array
  names = ["Sally", "Joe", "Lisa", "Henry"]
  loop do
    puts names.pop
    break if names.empty?
  end
end

def stop_counting
  5.times do |index|
    puts index
    break if index == 2
  end
end

def only_even
  number = 0
  until number == 10
    number += 1
    next if number.odd?
    puts number
  end
end

def first_to_five
  number_a = 0
  number_b = 0
  loop do
    number_a += rand(2)
    number_b += rand(2)
    next unless number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

def greeting
  number_of_greetings = 0
  while number_of_greetings < 2
  puts 'Hello!'
  number_of_greetings += 1
  end
end