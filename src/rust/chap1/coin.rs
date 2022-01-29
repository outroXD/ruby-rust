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