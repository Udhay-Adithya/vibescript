#[derive(Debug)]
pub enum ASTNode {
    Number(i32),
    Identifier(String),
    Expression(Box<ASTNode>),
    Statement(Box<ASTNode>),
    // Define more nodes as needed, like functions, control structures, etc.
}
