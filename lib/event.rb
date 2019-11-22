require 'pry'


class Event

attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age

  end

  def max_age
    @age.max(1)
  end

  def min_age
    @age.min(1)
  end

  def average_age

    #why is @age empty
      (@age.sum / @age.count).round(2)
  end

  def standard_deviation_age
    #WHY WONT THESE CONVERT TO FLOAT
      # @age = []
      # @age.each do |convert|
      #   @age << convert.to_f
      # end
      # @age.collect{|float| float.to_f}
      # binding.pry
      @age.map {|a| a.to_f}
      binding.pry
    calculation1 = 0.0
    calculation2 = 0.0
    step4 = []
    step5 = []
    step6 = 0.0
    step7 = 0.0
    std_dev = 0.0

    @age.each do |math|
      calculation1 += math
    end

    calculation2 = (calculation1 / @age.count)

    @age.each do |math|
      step4 << (math - calculation2)
    end


    step4.each do |math|
      step5 << (math * math)
    end

    step5.each do |math|
      step6 += math
    end

    step7 = (step6 / @age.count)

    std_dev = Math.sqrt(step7).round(2)

    return std_dev
  end


end
