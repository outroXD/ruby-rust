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