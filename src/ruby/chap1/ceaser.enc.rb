def encrypt(text, shift)
  a_code = 'A'.ord
  z_code = 'Z'.ord
  text.split('').each_with_object("") do |c, res|
    if (a_code..z_code) === c.ord
      res << (((c.ord - a_code + shift) % 26) + a_code).chr
      next
    end
    res << c
  end
end

enc = encrypt("I LOVE YOU", 3)
dec = encrypt(enc, -3)
puts("#{enc} => #{dec}")