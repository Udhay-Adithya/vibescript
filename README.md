### **1. Grammar and Syntax**

#### **Data Types**
   - **`digits`**: Represents both integers and floating-point numbers. E.g., `vibe digits x mood 5;`
   - **`vibes`**: Represents strings. E.g., `vibe vibes name mood "VibeScript";`
   - **`feels`**: Represents boolean values (`woke` for true and `big yikes` for false). E.g., `vibe feels flag mood woke;`

#### **Operators**
   - **`mood`**: Assignment operator. E.g., `vibe digits score mood 100;`
   - **`glowUp`**: Increment operator. E.g., `score glowUp;`
   - **`glowDown`**: Decrement operator. E.g., `score glowDown;`
   - **Arithmetic operators**: `+`, `-`, `*`, `/` (no custom slang for these to keep performance and familiarity).

#### **Control Structures**
   - **`bet`**: If statement.
      ```plaintext
      bet (condition) {
         // code
      }
      ```
   - **`no cap`**: Else statement.
      ```plaintext
      bet (condition) {
         // code
      } no cap {
         // alternate code
      }
      ```
   - **`bop`**: For loop.
      ```plaintext
      bop (vibe digits i mood 0; i < 10; i glowUp) {
         // code
      }
      ```
   - **`sus`**: While loop.
      ```plaintext
      sus (condition) {
         // code
      }
      ```
   - **`ok boomer`**: Break statement. Used to exit a loop.

#### **Functions**
   - **`slay`**: Define a function.
      ```plaintext
      slay vibes greet() {
         flex("Hello, VibeScript!");
         snatched "Done";
      }
      ```
   - **`fire`**: Call a function. E.g., `fire greet();`
   - **`snatched`**: Return statement to exit a function with a value.

#### **Exception Handling**
   - **`shook`**: Try block.
      ```plaintext
      shook {
         // code that may throw an exception
      } salty (error) {
         // handle exception
      }
      ```

#### **Input/Output**
   - **`flex`**: Print to output. E.g., `flex("Hello, World!");`
   - **`spill`**: Take input. E.g., `vibe vibes name mood spill("What's your name?");`

#### **Comments**
   - **`tea`**: Used to start a comment. Everything after `tea` on the line is ignored.
      ```plaintext
      tea This is a comment
      ```

#### **Boolean Values**
   - **`woke`**: Equivalent to true.
   - **`big yikes`**: Equivalent to false.

#### **Miscellaneous**
   - **`clout`**: Import or include libraries.
      ```plaintext
      clout "math_library";
      ```
   - **`dead`**: Exit the program. E.g., `dead;`

---

### **2. Syntax Rules**

#### **Variable Declaration**
   - Variables are declared using `vibe` followed by the type and an optional initial value.
      ```plaintext
      vibe digits age mood 21;
      vibe vibes name mood "VibeScript";
      vibe feels isReady mood woke;
      ```

#### **Statements and Expressions**
   - **Assignment**: Uses `mood` operator. `x mood 10;`
   - **Increment/Decrement**: `glowUp` and `glowDown` can be used as post-increment/decrement.

#### **Control Flow Syntax**
   - **If-Else**: `bet` starts an if-statement, `no cap` provides the else clause.
   - **Loops**:
      - For loop starts with `bop` and contains initialization, condition, and increment.
      - While loop starts with `sus`.

#### **Function Syntax**
   - **Definition**: Functions are defined with `slay`, taking optional parameters, and end with `snatched` to return a value.
   - **Invocation**: Functions are called using `fire`.

#### **Exception Handling Syntax**
   - **Try-Catch**: Encapsulate code in `shook` with `salty` to catch and handle errors.

---

### **Example Code**

Here's an example VibeScript code snippet to illustrate these rules:

```plaintext
tea VibeScript example program

clout "standard_library";

slay digits add(vibe digits x, vibe digits y) {
   snatched x + y;
}

vibe digits total mood 0;

bop (vibe digits i mood 0; i < 5; i glowUp) {
   bet (i % 2 mood 0) {
      flex("Even number");
   } no cap {
      flex("Odd number");
   }
}

vibe vibes name mood spill("What's your name?");
flex("Hello, " + name + "!");

shook {
   fire add(5, 10);
} salty (error) {
   flex("An error occurred: " + error);
}

dead;
```