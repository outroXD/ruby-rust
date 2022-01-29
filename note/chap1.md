# Chapter 1

## Section 4
### sample 1
Ruby
```ruby
p "Hello, World"
```
Rust
```rust
fn main() {
    println!("Hello, World!");
}
```
### sample 2
Ruby
```ruby
banana = 300
print("バナナの値段=#{banana}円")
```
```bash
╰─ ruby show_price.rb
バナナの値段=300円% 
```
Rust
```rust
fn main() {
    let banana = 300;
    println!("バナナの値段={}円", banana);
}
```
```bash
╰─ ./show_price 
バナナの値段=300円
```
### sample 3
Ruby
```ruby
moon = 384400.0
car = 80.0
btrain = 300.0
p "月まで車で#{moon / car / 24}日"
p "月まで新幹線で#{moon / btrain / 24}日"
```
```bash
╰─ ruby moon.rb
"月まで車で200.20833333333334日"
"月まで新幹線で53.388888888888886日"
```
Rust
```rust
fn main() {
    let moon = 384400.0;
    let car = 80.0;
    let btrain = 300.0;
    println!("月まで車で{}日", moon / car / 24.0);
    println!("月まで新幹線で{}日", moon / btrain / 24.0);
}
```
```bash
╰─ ./moon 
月まで車で200.20833333333334日
月まで新幹線で53.388888888888886日
```
### sample 4
* if
* for

Ruby
```Ruby
(1..101).each do |i|
  if i % 3 == 0 && i % 5 == 0
    p "FizzBuzz"
  elsif i % 3 == 0
    p "Fizz"
  elsif i % 5 == 0
    p "Buzz"
  else
    p i
  end
end
```
Rust
```rust
fn main () {
    for i in 1..101 {
        if i % 3 == 0 && i % 5 == 0 {
            println!("FizzBuzz");
        } else if i % 3 == 0 {
            println!("Fizz");
        } else if i % 5 == 0 {
            println!("Buzz");
        } else {
            println!("{}", i);
        }
    }
}
```

## Section 6
### P 
Ruby
```ruby
(1..9).each do |y|
  (1..9).each do |x|
    print "#{y * x},".rjust(4).chomp
  end
  puts
end
```
```bash
╰─ ruby kuku.rb
  1,  2,  3,  4,  5,  6,  7,  8,  9,
  2,  4,  6,  8, 10, 12, 14, 16, 18,
  3,  6,  9, 12, 15, 18, 21, 24, 27,
  4,  8, 12, 16, 20, 24, 28, 32, 36,
  5, 10, 15, 20, 25, 30, 35, 40, 45,
  6, 12, 18, 24, 30, 36, 42, 48, 54,
  7, 14, 21, 28, 35, 42, 49, 56, 63,
  8, 16, 24, 32, 40, 48, 56, 64, 72,
  9, 18, 27, 36, 45, 54, 63, 72, 81,
```
Rust
```rust
fn main() {
    for y in 1..10 {
        for x in 1..10 {
            print!("{:3},", x * y);
        }
        println!("");
    }
}
```
```bash
╰─ ./kuku       
  1,  2,  3,  4,  5,  6,  7,  8,  9,
  2,  4,  6,  8, 10, 12, 14, 16, 18,
  3,  6,  9, 12, 15, 18, 21, 24, 27,
  4,  8, 12, 16, 20, 24, 28, 32, 36,
  5, 10, 15, 20, 25, 30, 35, 40, 45,
  6, 12, 18, 24, 30, 36, 42, 48, 54,
  7, 14, 21, 28, 35, 42, 49, 56, 63,
  8, 16, 24, 32, 40, 48, 56, 64, 72,
  9, 18, 27, 36, 45, 54, 63, 72, 81,

```
### P66
Ruby
```ruby
(1...10).each do |y|
  print (1...10).map { |x| (x * y).to_s.rjust(3) }
                .join(",")
  puts
end
```
```bash
╰─ ruby kuku.rb
  1,  2,  3,  4,  5,  6,  7,  8,  9
  2,  4,  6,  8, 10, 12, 14, 16, 18
  3,  6,  9, 12, 15, 18, 21, 24, 27
  4,  8, 12, 16, 20, 24, 28, 32, 36
  5, 10, 15, 20, 25, 30, 35, 40, 45
  6, 12, 18, 24, 30, 36, 42, 48, 54
  7, 14, 21, 28, 35, 42, 49, 56, 63
  8, 16, 24, 32, 40, 48, 56, 64, 72
  9, 18, 27, 36, 45, 54, 63, 72, 81
```
Rust
```rust
fn main() {
    for y in 1..10 {
        let s = (1..10).map(|x| format!("{:3}", x * y))
                       .collect::<Vec<String>>()
                       .join(",");
        println!("{}", s);
    }
}
```
```bash
╰─ ./kuku 
  1,  2,  3,  4,  5,  6,  7,  8,  9
  2,  4,  6,  8, 10, 12, 14, 16, 18
  3,  6,  9, 12, 15, 18, 21, 24, 27
  4,  8, 12, 16, 20, 24, 28, 32, 36
  5, 10, 15, 20, 25, 30, 35, 40, 45
  6, 12, 18, 24, 30, 36, 42, 48, 54
  7, 14, 21, 28, 35, 42, 49, 56, 63
  8, 16, 24, 32, 40, 48, 56, 64, 72
  9, 18, 27, 36, 45, 54, 63, 72, 81
```
### P67
* 標準出力
* if
* for

Ruby
```ruby
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
```
```bash
╰─ ruby seireki_wareki.rb
西暦1926年 = 昭和元年
西暦1927年 = 昭和2年
西暦1928年 = 昭和3年
西暦1929年 = 昭和4年
西暦1930年 = 昭和5年
<省略>
```
Rust
```rust
fn main() {
    for y in 1926..2027 {
        print!("西暦{}年 = ", y);
        if y >= 2019 {
            if y == 2019 { println!("令和元年"); }
            else { println!("令和{}年", y - 2019 + 1) }
        } else if y >= 1989 {
            if y == 1989 { println!("平成元年"); }
            else { println!("平成{}年", y - 1989 + 1) }
        } else if y >= 1926 {
            if y == 1926 { println!("昭和元年"); }
            else { println!("昭和{}年", y - 1926 + 1) }
        }
    }
}
```
```bash
西暦1926年 = 昭和元年
西暦1927年 = 昭和2年
西暦1928年 = 昭和3年
西暦1929年 = 昭和4年
西暦1930年 = 昭和5年
<省略>
```
### P69 ~ 70
Ruby
```ruby
a, b = 1, 1
puts(a)
puts(b)
(1..30).each do |_|
  puts(a + b)
  a, b = b, (a + b)
end
```
```bash
╰─ ruby fib.rb
1
1
2
3
5
<略>
```
Rust
```rust
fn main() {
    let mut a = 1;
    let mut b = 1;
    println!("{}", a);
    println!("{}", b);
    for _ in 0..30 {
        println!("{}", a + b);
        let tmp = a;
        a = b;
        b = tmp + b;
    }
}
```
```bash
╰─ ./fib
1
1
2
3
5
<略>
```
### P73
Ruby
```ruby
dog, cat = 100, 200
print("dog is #{dog}, cat is #{cat}")
```
```bash
╰─ ruby let_error.rb 
dog is 100, cat is 200%   
```
Rust
```rust
fn main() {
    let dog = 100;
    let cat = 200;
    println!("dog is {}, cat is {}", dog, cat);
}
```
```bash
╰─ ./let_test 
dog is 100, cat is 200
```
### P75
Rust
```rust
fn main() {
    let pc_price = 98000.0;
    let shipping_fee_a = 1200.0;
    let a_rate = 0.2;
    let b_rate = 0.1;

    println!("A社={}円", pc_price * (1.0 - a_rate) + shipping_fee_a);
    println!("B社={}円", pc_price * (1.0 - b_rate));
}
```
```bash
╰─ ./kaimono       
A社=79600円
B社=88200円
```
### P79
Ruby
```ruby
(0..10).each do |x|
  (0..3).each do |y|
    (0..10).each do |z|
      cost = 500 * x + 100 * y + 50 * z
      next if cost != 3950
      puts("500円x#{x} + 100円x#{y} + 50円x#{z}=#{cost}")
    end
  end
end
```
```bash
╰─ ruby coin.rb
500円x7 + 100円x0 + 50円x9=3950
500円x7 + 100円x1 + 50円x7=3950
500円x7 + 100円x2 + 50円x5=3950
500円x7 + 100円x3 + 50円x3=3950
```
Rust
```rust
fn main() {
    for x in 0..11 {
        for y in 0..4 {
            for z in 0..11 {
                let cost = 500 * x + 100 * y + 50 * z;
                if cost == 3950 {
                    println!("500円x{} + 100円x{} + 50円x{} = {}", x, y, z, cost);
                }
            }
        }
    }
}
```
```bash
╰─ ./coin 
500円x7 + 100円x0 + 50円x9 = 3950
500円x7 + 100円x1 + 50円x7 = 3950
500円x7 + 100円x2 + 50円x5 = 3950
500円x7 + 100円x3 + 50円x3 = 3950
```
### P88 ~ 89
```ruby
def encrypt(text, shift)
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
```
```bash
╰─ ruby ./ceaser.enc.rb
L ORYH BRX => I LOVE YOU
```
Rust
* 文字列リテラル -> 型&str
* 型変換 let <変数名> = 変数 as 型;
```rust
fn encrypt(text: &str, shift: i16) -> String {
    let a_code = 'A' as i16;
    let z_code = 'Z' as i16;

    let mut res = String::new();
    for ch in text.chars() {
        let mut code = ch as i16;
        if a_code <= code && code <= z_code {
            code = (code - a_code + shift + 26) % 26 + a_code;
        }
        res.push((code as u8) as char);
    }
    return res;
}

fn main() {
    let enc = encrypt("I LOVE YOU", 3);
    let dec = encrypt(&enc, -3);
    println!("{} => {}", enc, dec);
}
```
```bash
╰─ ./ceasar_enc 
L ORYH BRX => I LOVE YOU
```
### P99 ~ 100
* usize 符号なし整数で環境毎にサイズが異なる。
* `&` 値の参照。
  * `&mut` 可変な参照。
* 配列の初期化。 `[初期値; 配列要素数]`

Rust
```rust
fn is_prime(n: usize) -> bool {
    for i in 2..n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

fn get_primes(primes: &mut[usize; 100]) {
    let mut i = 2;
    let mut count = 0;
    while count < 100 {
        if is_prime(i) {
            primes[count] = i;
            count += 1;
        }
        i += 1;
    }
}

fn main() {
    let mut primes = [0; 100];
    get_primes(&mut primes);
    println!("{:?}", primes);
}
```