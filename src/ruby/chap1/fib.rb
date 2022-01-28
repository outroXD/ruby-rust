a, b = 1, 1
puts(a)
puts(b)
(1..30).each do |_|
  puts(a + b)
  a, b = b, (a + b)
end