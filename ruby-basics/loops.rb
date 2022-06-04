# loops 1
def print_while
  numbers = []
  while numbers.length < 5
    numbers << rand(99)
  end
  numbers
end

def count_up
  count = 1
  until count > 10
    puts count
    count += 1
  end
end

def print_until
  numbers = [7, 9, 13, 25, 18]
  until numbers.empty?
    puts numbers.pop
  end
end

def thats_odd
  for i in 1..100
    puts i if i.odd?
  end
end

def greet_your_friends
  friends = ['Sarah', 'John', 'Hannah', 'Dave']
  for friend in friends
    puts "Hello, #{friend}"
  end
end
greet_your_friends