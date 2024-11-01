// src/main.rs

mod lexer;
mod parser;

use lexer::{tokenize, Token};
use parser::parse_statements;

fn main() {
    let code = r#"flex("Hello, VibeScript!");"#;

    // Tokenize the code
    let tokens = tokenize(code);
    println!("Tokens: {:?}", tokens);

    // Parse the tokens
    match parse_statements(&tokens) {
        Ok((_, ast)) => println!("Parsed AST: {:?}", ast),
        Err(e) => eprintln!("Error parsing: {:?}", e),
    }
}
