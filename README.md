# Nano Processor with Basic ALU

This repository contains the design and implementation of a nano processor capable of executing 10 instructions. The processor architecture includes a basic Arithmetic Logic Unit (ALU) for performing arithmetic and logic operations.    
This is the extended version of Nano processor: [Nano Processor-Version 1](https://github.com/InduwaraRathnayake/Nano-Processor.git)

## Features

**Instruction Set**: The processor supports a set of 10 instructions designed for basic computing tasks.
-    `ADD`: Addition operation.
-    `SUB`: Subtraction operation.
-    `MUL`: Multiplication operation.
-    `MOVI`: Move immediate value to register.
-   `JZR`: Jump if zero instruction.
-    `NEG`: Negate operation.
-    `AND`: Bitwise AND operation.
-    `OR`: Bitwise OR operation.
-    `ANDN`: Bitwise AND with NOT operation. (```A AND (NOT B)```)
-    `ORN`: Bitwise OR with NOT operation. (```A OR (NOT B)```)  

**ALU**: The processor includes a simple Arithmetic Logic Unit capable of performing arithmetic and logic operations such as addition, subtraction, AND, OR, etc.   

## Usage

- **Simulation**: The processor design can be simulated using a hardware description language (VHDL) simulator such as ModelSim.
- **Synthesis**: Synthesize the processor design for specific FPGA or ASIC platforms using synthesis tools such as Vivado or Quartus.
- **Programming**: Write programs in assembly language using the supported instruction set, assemble them, and load them onto the ROM for execution.

## Directory Structure

- **/src**: Contains the VHDL files describing the processor architecture and ALU.
- **/sim**: Includes simulation scripts and testbenches for verifying the functionality of the processor.
