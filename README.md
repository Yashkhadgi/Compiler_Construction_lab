# Compiler Construction Lab (Semester V)

This repository contains practical implementations, assignments, and experiments for the **Compiler Construction (CC)** course, focusing on Lexical Analysis and Syntax Analysis using **LEX (Flex)** and **YACC (Bison)**.

---

## 👤 Student Details

| Attribute | Details |
| :--- | :--- |
| **Name** | Yash Khadgi |
| **PRN** | 24070521137 |
| **Batch** | B2 |
| **Semester** | V |
| **Course** | Compiler Construction Laboratory |

---

## 📂 Experiments Overview

| No. | Experiment Title | Description | Files |
|:---:|:---|:---|:---|
| **01** | **Basic Lex Programs** | Introduction to Lexical Analysis: recognizing specific string patterns (`practical1-1.l`) and counting single-line comments (`practical1-2.l`). | [`practical1-1.l`](01.%20Basic%20Lex%20Programs/practical1-1.l), [`practical1-2.l`](01.%20Basic%20Lex%20Programs/practical1-2.l), [`output.png`](01.%20Basic%20Lex%20Programs/output.png) |
| **02** | **Count Comments, Keywords, Identifiers** | Categorize and count C-style single-line & multi-line comments, standard C keywords, identifiers, and literals. | [`exp2.l`](02.%20Count%20Comments,%20Keywords,%20Identifiers/exp2.l), [`output.png`](02.%20Count%20Comments,%20Keywords,%20Identifiers/output.png) |
| **03** | **Words Starting with A & Numbers** | Identify and filter words beginning with letter 'A'/'a' and distinguish integer/decimal numbers. | [`exp3.l`](03.%20Words%20Starting%20with%20A%20&%20Numbers/exp3.l), [`output.png`](03.%20Words%20Starting%20with%20A%20&%20Numbers/output.png) |
| **04** | **Basic YACC Program** | Implementation of context-free grammar parsing to validate basic arithmetic expression syntax. | [`exp4.l`](04.%20Basic%20YACC%20Program/exp4.l), [`exp4.y`](04.%20Basic%20YACC%20Program/exp4.y), [`output.png`](04.%20Basic%20YACC%20Program/output.png) |
| **05** | **Lowercase to Uppercase Conversion** | Lex scanner to transform input text by converting lowercase ASCII alphabetic characters to uppercase. | [`exp5.l`](05.%20Lowercase%20to%20Uppercase%20Conversion/exp5.l), [`output.png`](05.%20Lowercase%20to%20Uppercase%20Conversion/output.png) |
| **06** | **Decimal and Hexadecimal Conversion** | Number system conversion routines using Lex: Decimal to Hexadecimal and Hexadecimal to Decimal. | [`decimaltohexa.l`](06.%20Decimal%20and%20Hexadecimal%20Conversion/decimaltohexa.l), [`hexatodecimal.l`](06.%20Decimal%20and%20Hexadecimal%20Conversion/hexatodecimal.l), [`output.png`](06.%20Decimal%20and%20Hexadecimal%20Conversion/output.png) |
| **07** | **Lines Ending with COM** | Pattern matcher to recognize and validate input lines that terminate with the `com` suffix. | [`exp7.l`](07.%20Lines%20Ending%20with%20COM/exp7.l), [`output.png`](07.%20Lines%20Ending%20with%20COM/output.png) |
| **08** | **Postfix Expression Evaluation** | Stack-based evaluation of arithmetic expressions in Postfix (Reverse Polish) notation using Lex & Yacc. | [`exp8.l`](08.%20Postfix%20Expression%20Evaluation/exp8.l), [`exp8.y`](08.%20Postfix%20Expression%20Evaluation/exp8.y), [`output.png`](08.%20Postfix%20Expression%20Evaluation/output.png) |
| **09** | **Arithmetic Expression Evaluation** | Evaluator for standard infix arithmetic expressions supporting operator precedence (`+`, `-`, `*`, `/`) and parentheses. | [`exp9.l`](09.%20Arithmetic%20Expression%20Evaluation/exp9.l), [`exp9.y`](09.%20Arithmetic%20Expression%20Evaluation/exp9.y), [`output.png`](09.%20Arithmetic%20Expression%20Evaluation/output.png) |
| **10** | **For Loop & Ternary Expression Validation** | Syntax analyzer to check and validate C-style `for(...)` loops and conditional ternary (`? :`) operators. | [`exp10.l`](10.%20For%20Loop%20and%20Ternary%20Expression%20Validation/exp10.l), [`exp10.y`](10.%20For%20Loop%20and%20Ternary%20Expression%20Validation/exp10.y), [`output.png`](10.%20For%20Loop%20and%20Ternary%20Expression%20Validation/output.png) |
| **11** | **Intermediate Code Generator** | Synthesis phase implementation evaluating arithmetic expressions and generating Three-Address Code (TAC) temporaries (`t1`, `t2`, ...) for numeric operations. | [`exp11.l`](11.%20Intermediate%20Code%20Generator/exp11.l), [`exp11.y`](11.%20Intermediate%20Code%20Generator/exp11.y), [`output.png`](11.%20Intermediate%20Code%20Generator/output.png) |
| **12** | **Three Address Code Generator** | Synthesis phase implementation generating Three-Address Code (TAC) intermediate representations for complex arithmetic expressions with variables and operators. | [`exp12.l`](12.%20Three%20Address%20Code%20Generator/exp12.l), [`exp12.y`](12.%20Three%20Address%20Code%20Generator/exp12.y), [`output.png`](12.%20Three%20Address%20Code%20Generator/output.png) |

---

## 🛠️ Prerequisites & Installation

To compile and execute the programs, ensure you have **Flex**, **Bison / Yacc**, and a **C Compiler (GCC)** installed.

### Linux / Ubuntu / WSL:
```bash
sudo apt update
sudo apt install flex bison gcc
```

### Windows:
- Install **MSYS2** or **MinGW** with `flex`, `bison`, and `gcc` packages, or
- Run directly inside **WSL (Windows Subsystem for Linux)**.

---

## 🚀 How to Run

### 1. Standalone Lex Programs (`.l`)
```bash
# Generate C source code from Lex specifications
flex filename.l

# Compile the generated C scanner
gcc lex.yy.c -o output -lfl

# Run the executable
./output
```

> **Note:** On systems where `-lfl` is not available, you can compile with `gcc lex.yy.c -o output` provided `yywrap()` is defined in your `.l` file.

---

### 2. Combined Lex and YACC Programs (`.l` & `.y`)
```bash
# 1. Generate parser C file (y.tab.c) and header file (y.tab.h)
yacc -d filename.y
# or with bison:
bison -d filename.y

# 2. Generate lexical analyzer C file (lex.yy.c)
flex filename.l

# 3. Compile parser and lexer together
gcc y.tab.c lex.yy.c -o output

# 4. Execute the parser
./output
```

---

## 📁 Repository Structure

```text
Compiler_Construction/
├── 01. Basic Lex Programs/
│   ├── output.png
│   ├── practical1-1.l
│   ├── practical1-1_output.png
│   ├── practical1-2.l
│   └── practical1-2_output.png
├── 02. Count Comments, Keywords, Identifiers/
│   ├── cc 2 output.png
│   ├── exp2.l
│   └── output.png
├── 03. Words Starting with A & Numbers/
│   ├── exp3.l
│   └── output.png
├── 04. Basic YACC Program/
│   ├── exp4.l
│   ├── exp4.y
│   └── output.png
├── 05. Lowercase to Uppercase Conversion/
│   ├── exp5.l
│   └── output.png
├── 06. Decimal and Hexadecimal Conversion/
│   ├── decimaltohexa.l
│   ├── decimaltohexa_output.png
│   ├── hexatodecimal.l
│   ├── hexatodecimal_output.png
│   └── output.png
├── 07. Lines Ending with COM/
│   ├── exp7.l
│   └── output.png
├── 08. Postfix Expression Evaluation/
│   ├── exp8.l
│   ├── exp8.y
│   └── output.png
├── 09. Arithmetic Expression Evaluation/
│   ├── exp9.l
│   ├── exp9.y
│   └── output.png
├── 10. For Loop and Ternary Expression Validation/
│   ├── exp10.l
│   ├── exp10.y
│   └── output.png
├── 11. Intermediate Code Generator/
│   ├── exp11.l
│   ├── exp11.y
│   └── output.png
├── 12. Three Address Code Generator/
│   ├── exp12.l
│   ├── exp12.y
│   └── output.png
└── README.md
```

---

## 📜 License
This repository is maintained for academic and educational coursework purposes.
