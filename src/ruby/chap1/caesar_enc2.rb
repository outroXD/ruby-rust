def encrypt(text, shift)
  a = 'A'.ord
  conv = lambda { |n| ((n.ord - a + shift) % 26 + a) }
  test.split('').each_with_object("")
                .map { |n| if ('A'..'Z') === n conv(n) else n }
end