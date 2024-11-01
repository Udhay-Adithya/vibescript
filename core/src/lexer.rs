// src/lexer.rs

use logos::Logos;

#[derive(Logos, Debug, PartialEq)]
pub enum Token {
    // Define keywords
    #[token("bet")]
    Bet,
    #[token("no cap")]
    NoCap,
    #[token("bop")]
    Bop,
    #[token("sus")]
    Sus,
    #[token("ok boomer")]
    OkBoomer,
    #[token("slay")]
    Slay,
    #[token("fire")]
    Fire,
    #[token("snatched")]
    Snatched,
    #[token("flex")]
    Flex,
    #[token("spill")]
    Spill,
    #[token("shook")]
    Shook,
    #[token("salty")]
    Salty,
    #[token("tea")]
    Tea,
    #[token("clout")]
    Clout,
    #[token("dead")]
    Dead,
    #[regex("woke|big yikes")]
    Feels,

    // Symbols and Operators
    #[token("=")]
    Mood,
    #[token("++")]
    GlowUp,
    #[token("--")]
    GlowDown,
    #[token("+")]
    Plus,
    #[token("-")]
    Minus,
    #[token("*")]
    Multiply,
    #[token("/")]
    Divide,
    #[token("(")]
    LParen,
    #[token(")")]
    RParen,
    #[token("{")]
    LBrace,
    #[token("}")]
    RBrace,
    #[token(";")]
    Semicolon,
    #[token(",")]
    Comma,

    // Literals
    #[regex(r#""[^"]*""#)]
    Vibes,  // String literals
    #[regex(r"[0-9]+")]
    Digits, // Numeric literals
    #[regex(r"[a-zA-Z_][a-zA-Z0-9_]*")]
    Identifier,

    // Skip whitespace
    #[regex(r"[ \t\n\f]+", logos::skip)]
    Whitespace,

    // Error for unknown characters
    #[error]
    Error,
}

// Function to tokenize a string input
pub fn tokenize(input: &str) -> Vec<Token> {
    Token::lexer(input).collect()
}
