require_relative "validations"

class SapCalculations

  def get_earned_credits
    begin
      puts "Please enter earned credits: "
      @earned_credits = gets.chomp
    end until Validations.is_int? @earned_credits
    @earned_credits = @earned_credits.to_i
  end

  def get_attempted_credits
    begin
      puts "Please enter attempted credits: "
      @attempted_credits = gets.chomp
    end until Validations.is_int? @attempted_credits
    @attempted_credits = @attempted_credits.to_i
  end

  def calculate_minimum_credits
    minimum_completion = 0.725 #Minimum completion percentage required
    @minimum_credits = ((minimum_completion * @attempted_credits) - @earned_credits) / (1 - minimum_completion)
    @minimum_credits = (@minimum_credits + 1).to_i #round up to nearest int
    return @minimum_credits
  end

  private

end
