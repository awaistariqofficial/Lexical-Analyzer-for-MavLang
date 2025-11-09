
<img width="1024" height="1024" alt="Mavlang_LOGO" src="https://github.com/user-attachments/assets/f27b73ca-bdd8-4bdc-9790-d542185eb5e9" />

# MavLang: A Mini Aviation-Themed Programming Language

MavLang is a custom, case-sensitive mini programming language inspired by **Maverick and the Top Gun universe**. It uses aviation-themed keywords and syntax to represent common programming constructs such as conditions, loops, functions, variables, and input/output.

## Features

- **Keywords (all lowercase):**
  - `launch` → main function
  - `lock` → if condition
  - `elsejet` → else condition
  - `loopback` → for loop
  - `runway` → while loop
  - `mission` → function definition
  - `engage` → function call
  - `debrief` → return statement
  - `eject` → break/exit
  - `afterburn` → increment
  - `stall` → pause
  - `signal` → print/output
  - `readjet` → input
  - `flightpath` → array
  - `target` → integer
  - `altitude` → float
  - `airspeed` → string
  - `charcode` → char
  - `switch` → boolean

- **Operators:**
  - `^^` → increment
  - `vv` → decrement
  - `assign` → assignment (`=`)
  - `++` → logical AND
  - `+-` → logical OR
  - `<` → less than
  - `>` → greater than

- **Symbols:**
  - `{` → block start
  - `}` → block end
  - `(`, `)` → parentheses
  - `;` → semicolon
  - `[`, `]` → array brackets
  - `,` → comma

## Sample MavLang Program

```mavlang
launch {
    target speed assign 0
    altitude fuel assign 55.7
    airspeed jetName assign "F16 Falcon"
    charcode grade assign 'A'
    switch engineOn assign true

    signal "=== Jet Startup Sequence Initiated ==="

    lock (engineOn ++)(fuel > 0) {
        signal "Engine status: OK"
    } elsejet {
        signal "Engine failure detected!"
        eject
    }

    readjet speed

    loopback (speed assign 0; speed < 3; speed ^^) {
        signal "Accelerating..."
    }

    runway (speed < 10) {
        signal "Increasing thrust..."
        speed ^^
    }

    afterburn speed ^^
    stall
}


-------------------------------------------------------------

Running the Scanner

Place your MavLang code in input.txt.

Compile the Flex scanner:

flex scanner.l
gcc lex.yy.c -o scanner -lfl


Run the scanner and save output and errors:

./scanner < input.txt > output.txt 2> error.txt


