require_relative "sap_calculations"

puts "Enter 1 for new calculation or any other key to exit: "
action = gets.chomp

while action == "1"
  student = SapCalculations.new
  student.check_sap

  puts "\nEnter 1 for new calculation or any other key to exit: "
  aciton = gets.chomp
end
