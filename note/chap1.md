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