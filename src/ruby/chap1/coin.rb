(0..10).each do |x|
  (0..3).each do |y|
    (0..10).each do |z|
      cost = 500 * x + 100 * y + 50 * z
      next if cost != 3950
      puts("500円x#{x} + 100円x#{y} + 50円x#{z}=#{cost}")
    end
  end
end