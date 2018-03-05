#
# def add_two(number)
#   (number + 2) unless number.nil?
# end
#
# puts add_two(nil)
def calculate_tip(total_bill, tip_percent)
tip_percent *= 100 if tip_percent < 1
total_bill * (tip_percent / 100)
end

def tipandbill(total_bill, tip)
total_bill + tip
end

def divide_people(tipandbill, persons)
tipandbill / persons
end

total_bill = 0
until total_bill.to_f != 0.0
puts "What is your total bill"
total_bill = gets.to_f
end

puts "What percent would like to tip?"
tip_percent =  gets.chomp.to_f

puts "How many people are in your party?"
party_size = gets.chomp.to_i


tip = calculate_tip(total_bill,tip_percent)
tipandbill = tipandbill(total_bill, tip)
yourshare = divide_people(tipandbill, party_size)

puts "Your total bill is $#{sprintf('%.2f', tipandbill)}"
puts "You owe $#{sprintf('%.2f', yourshare)}!"

# choice = gets.chomp
# computers_choice = ["R", "P", "S"].sample
# puts "Computer's choice was #{computers_choice}"
#
# total bill =
# tip percent =
# If choice == computers_choice
#   puts "It's a tie!"
# elsif computers_choice == "R" && choice == "S"
#   puts "you lose"

#
# if choice == computers_choice
#     puts "It's a tie!"
#   elsif (computers_choice == "R" && choice == "S") || (computers_choice == "P" && choice == "R") || (computers_choice == "R" && choice == "P")
#     puts "you lose"
#   elsif (computers_choice == "S" && choice == "R") || (computers_choice == "R" && choice == "P") || (computers_choice == "P" && choice == "S")
#     puts "you"
# end
