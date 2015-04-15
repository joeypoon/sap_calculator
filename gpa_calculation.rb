module GpaCalculation

  private

  MINIMUM_GPA = 2.0
  #What do I need to calculate gpa?
  #total credits attempted at institution
  #institutional GPA
  #GPA * credits = quality points
  #Min = 2.0
  #quality points / credits = GPA
  #currentQP + x / credits + x/(3 or 4)(As or Bs) = 2.0
  def get_institutional_credits
    begin
      puts "\nPlease enter institutional credits attempted: "
      @institutional_credits = gets.chomp
    end until is_int? @institutional_credits
    @institutional_credits.to_i
  end

  def get_institutional_gpa
    begin
      puts "\nPlease enter institutional GPA: "
      @institutional_gpa = gets.chomp
    end until is_float? @institutional_gpa
    @institutional_gpa.to_f
  end

  def calculate_quality_points
    @quality_points = @institutional_credits * @institutional_gpa
    return @quality_points
  end

  def set_gpa_status
    if @institutional_gpa < MINIMUM_GPA
      @gpa_status = true
    else
      @gpa_status = false
    end
  end

  def calculate_b_needed
  end

  def calculate_a_needed
  end

end
