def print_me
  "I'm printing the return value!"
end

def hello
  "Hello"
end

def world
  "World"
end

def greet
  "#{hello} #{world}"
end

def car(make, model)
  puts "#{make} #{model}"
end

def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

def dog(name)
  return name
end

def cat(name)
  return name
end

def assign_name(name = "Bob")
  name
end

def add(a, b)
  a + b
end

def multiply(a, b)
  a * b
end

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']
puts sentence(name(names), activity(activities))