module PhrsCalculation

  private

  MINIMUM_PERCENTAGE = 0.725 #Minimum completion percentage required

  def get_earned_credits
    begin
      puts "\nPlease enter total credits earned: "
      @earned_credits = gets.chomp
    end until is_float? @earned_credits
    @earned_credits = @earned_credits.to_f
  end

  def get_attempted_credits
    begin
      puts "\nPlease enter total credits attempted: "
      @attempted_credits = gets.chomp
    end until is_float? @attempted_credits
    @attempted_credits = @attempted_credits.to_f
  end

  def calculate_completion_percentage
    @completion_percentage = @earned_credits / @attempted_credits
    return @completion_percentage
  end

  def set_phrs_status #phrs = percentage hours
    if calculate_completion_percentage < MINIMUM_PERCENTAGE
      @phrs_status = true
    else
      @phrs_status = false
    end
  end

  def calculate_minimum_credits
    @minimum_credits = ((MINIMUM_PERCENTAGE * @attempted_credits) - @earned_credits) / (1 - MINIMUM_PERCENTAGE)
    @minimum_credits = (@minimum_credits + 1).to_i #round up to nearest int
    return @minimum_credits
  end

end
