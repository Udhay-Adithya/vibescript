use crate::lexer::Token;
use nom::{
    branch::alt,
    combinator::{map},
    multi::many0,
    sequence::{pair, preceded, terminated},
    IResult,
    error::{Error, ParseError}, // Import ParseError here
};

// AST Node Definitions
#[derive(Debug)]
pub enum ASTNode {
    Assignment(String, Box<ASTNode>),
    Number(i32),
    Identifier(String),
    Expression(Box<ASTNode>),
    Statement(Box<ASTNode>),
}

// Parse a single token
fn parse_token(input: &[Token]) -> IResult<&[Token], ASTNode> {
    alt((
        map(parse_identifier, |name| ASTNode::Identifier(name)),
        map(parse_number, |num| ASTNode::Number(num)),
    ))(input)
}

// Helper function to parse identifiers
fn parse_identifier(input: &[Token]) -> IResult<&[Token], String> {
    match input.first() {
        Some(Token::Identifier) => Ok((&input[1..], format!("{:?}", input[0]))),
        _ => Err(nom::Err::Error(Error::new(input, nom::error::ErrorKind::Tag))),
    }
}

// Helper function to parse numbers
fn parse_number(input: &[Token]) -> IResult<&[Token], i32> {
    if let Some(Token::Digits) = input.first() {
        // Replace with actual numeric conversion if needed
        Ok((&input[1..], 42)) // placeholder for actual conversion
    } else {
        Err(nom::Err::Error(Error::new(input, nom::error::ErrorKind::Tag)))
    }
}

// Basic expression parsing
fn parse_expression(input: &[Token]) -> IResult<&[Token], ASTNode> {
    map(parse_token, |node| ASTNode::Expression(Box::new(node)))(input)
}

// Parse multiple statements
pub fn parse_statements(input: &[Token]) -> IResult<&[Token], Vec<ASTNode>> {
    many0(map(parse_expression, |expr| ASTNode::Statement(Box::new(expr))))(input)
}
