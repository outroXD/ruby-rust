def prime?(n)
  (2..n).each do |i|
    return false if n % i == 0
  end
  true
end

def get_primes(count)
  i = 2
  res = []
  while len(res) < count
    res.push(i) if prime?(i)
    i++
  end
  res
end

print(get_primes(100))