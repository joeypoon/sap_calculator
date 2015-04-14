require_relative "sap_calculations"

puts "Enter 1 for new calculation or any other key to exit: "
action = gets.chomp
puts

while action == "1"
  student = SapCalculations.new
  student.get_earned_credits
  puts
  student.get_attempted_credits
  puts
  puts "Student needs " + student.calculate_minimum_credits.to_s + " credits to reach compliance."
  puts

  puts "Enter 1 for new calculation or any other key to exit: "
  aciton = gets.chomp
end
