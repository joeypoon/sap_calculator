require_relative "validations"
require_relative "phrs_calculation"
#require_relative "gpa_calculation"

class SapCalculations

  include Validations
  include PhrsCalculation
  #include GpaCalculation

  def initialize
    @phrs_status = false
    @gpa_status = false
  end

  def check_sap
    check_phrs
    #check_gpa
  end

  private

  def check_phrs
    get_earned_credits
    get_attempted_credits
    set_phrs_status
    if @phrs_status == true
      puts "\nStudent needs " + calculate_minimum_credits.to_s + " credits to reach the minimum completion percentage."
    else
      puts "\nStudent is meeting completion percentage requirements."
    end
  end

  #def check_gpa

  #end

end
