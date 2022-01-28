(1...10).each do |y|
  print (1...10).map { |x| (x * y).to_s.rjust(3) }
                .join(",")
  puts
end