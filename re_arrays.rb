

ar_sitting_map = [
                    [nil, "Pumpkin", nil, nil],
                    ["Socks", nil, "Mimi", nil],
                    ["Gismo", "Shadow", nil, nil],
                    ["Smokey","Toast","Pacha","Mau"]
                  ]
# Display the list of available seats to your user, like so:
  # Row 1 seat 1 is free.
  # Row 1 seat 3 is free.
  # Row 1 seat 4 is free.
  # Row 2 seat 2 is free.
  # Row 2 seat 4 is free.
  # Row 3 seat 3 is free.
  # Row 3 seat 4 is free.

# .each_with_index { |item, index|
# counter_item = 0
# ar_sitting_map.each_with_index do |item, index|
#   counter_item = 0
#   ar_sitting_map[index].each do |item|
#     if item == nil
#       puts "Row #{index + 1} seat #{counter_item + 1} is free."
#     end
#     counter_item +=1
#   end
# end

# For each available seat, use gets.chomp to prompt your user to choose whether they want to claim that spot.
# If they indicate they want to claim a seat, prompt them for their name and insert it into the array to show
# that they've been seated, like so:
# Row 1 seat 1 is free. Do you want to sit there? (y/n) # user says 'n'


ar_sitting_map.each_with_index do |item, index|
  counter_item = 0
  ar_sitting_map[index].each do |item|
    if item == nil
      puts "Row #{index + 1} seat #{counter_item + 1} is free. Do you want to sit there? (y/n)"
      user_ans = gets.chomp
      if user_ans == "y"
          puts "What is your name?"
          user_name = gets.chomp
          ar_sitting_map[index][counter_item] = user_name
      end
    end
    counter_item +=1
  end
end

puts ar_sitting_map
