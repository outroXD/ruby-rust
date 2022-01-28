(1926..2027).each do |y|
  print "西暦#{y}年 = "
  if y >= 2019
    if y == 2019
      print "令和元年"
    else
      print "令和#{y - 2019 + 1}年"
    end
  elsif y >= 1989
    if y == 1989
      print "平成元年"
    else
      print "平成#{y - 1989 + 1}年"
    end
  elsif y >= 1926
    if y == 1926
      print "昭和元年"
    else
      print "昭和#{y - 1926 + 1}年"
    end
  end
  puts
end