require 'pry'

ages = [24.0, 30.0, 18.0, 20.0, 41.0]
calculation1 = 0.0
calculation2 = 0.0
step4 = []
step5 = []
step6 = 0.0
step7 = 0.0
std_dev = 0.0

ages.each do |math|
  calculation1 += math
end

calculation2 = (calculation1 / ages.count)

ages.each do |math|
  step4 << (math - calculation2)
end


step4.each do |math|
  step5 << (math * math)
end

step5.each do |math|
  step6 += math
end

step7 = (step6 / ages.count)

std_dev = Math.sqrt(step7)

p std_dev
