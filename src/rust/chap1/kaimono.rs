fn main() {
    let pc_price = 98000.0;
    let shipping_fee_a = 1200.0;
    let a_rate = 0.2;
    let b_rate = 0.1;

    println!("A社={}円", pc_price * (1.0 - a_rate) + shipping_fee_a);
    println!("B社={}円", pc_price * (1.0 - b_rate));
}