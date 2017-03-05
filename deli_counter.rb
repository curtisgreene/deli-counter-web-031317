# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  elsif katz_deli.length != 0
    whose_in_line = [] # new array to hold line assignments
    katz_deli.each_with_index do |name,place| # each_with_index to get both the element and the index
      whose_in_line.push("#{place + 1}. #{name}") # interpolating the element and index into a string and adding to new array with #push
    end
    puts "The line is currently: #{whose_in_line.join(" ")}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
