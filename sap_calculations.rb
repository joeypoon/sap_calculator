require_relative "validations"

class SapCalculations

  include Validations

  def get_earned_credits
    begin
      puts "Please enter earned credits: "
      @earned_credits = gets.chomp
    end until is_float? @earned_credits
    @earned_credits = @earned_credits.to_f
  end

  def get_attempted_credits
    begin
      puts "Please enter attempted credits: "
      @attempted_credits = gets.chomp
    end until is_float? @attempted_credits
    @attempted_credits = @attempted_credits.to_f
  end

  def calculate_completion_percentage
    @completion_percentage = @earned_credits / @attempted_credits
    return @completion_percentage
  end

  def in_compliance_phrs? #phrs = percentage hours
    if calculate_completion_percentage < @minimum_completion
      return false
    else
      return true
    end
  end

  def calculate_minimum_credits
    @minimum_credits = ((@minimum_completion * @attempted_credits) - @earned_credits) / (1 - @minimum_completion)
    @minimum_credits = (@minimum_credits + 1).to_i #round up to nearest int
    return @minimum_credits
  end

  private

  def initialize
    @minimum_completion = 0.725 #Minimum completion percentage required
  end

end
