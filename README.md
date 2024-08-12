# Nano Processor with Basic ALU

This repository contains the design and implementation of a nano processor capable of executing 10 instructions. The processor architecture includes a basic `Arithmetic Logic Unit (ALU)` for performing arithmetic and logic operations.
This is the extended version of Nano processor: [Nano Processor-Version 1](https://github.com/InduwaraRathnayake/Nano-Processor.git)

![Picture](https://github.com/user-attachments/assets/dbf6ddc9-a868-4fa2-ad2a-af193fd229ff)

## High Level View
![HigleLevelView](https://github.com/user-attachments/assets/b2a719da-3dd1-4644-96ef-f8a4fba52b9f)


## Features

**Instruction Set**: The processor supports a set of 10 instructions designed for basic computing tasks.

| Instruction | Description                                   |
|-------------|-----------------------------------------------|
| `ADD`       | Addition operation.                           |
| `SUB`       | Subtraction operation.                        |
| `MUL`       | Multiplication operation.                     |
| `MOVI`      | Move immediate value to register.             |
| `JZR`       | Jump if zero instruction.                     |
| `NEG`       | Negate operation.                             |
| `AND`       | Bitwise AND operation.                        |
| `OR`        | Bitwise OR operation.                         |
| `ANDN`      | Bitwise AND with NOT operation. (`A AND (NOT B)`) |
| `ORN`       | Bitwise OR with NOT operation. (`A OR (NOT B)`)   |

**ALU**: The processor includes a simple Arithmetic Logic Unit capable of performing arithmetic and logic operations such as addition, subtraction, AND, OR, etc.

## Usage

- **Simulation**: The processor design can be simulated using a hardware description language (VHDL) simulator such as Vivado
- **Synthesis**: Synthesize the processor design for specific FPGA platforms using synthesis tools like Vivado
- **Programming**: Write programs in assembly language using the supported instruction set, assemble them, and load them onto the ROM for execution.

## Directory Structure

- **[/NanoProcessor.srcs/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2/tree/512545d0872f321c4f167b0c9aa151b89a9447ed/Extended%20Version%20Source%20Files/NanoProcessor.srcs)**: This directory contains all the source files related to the nano processor project.
  - **[/constrs_1/new/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2/tree/512545d0872f321c4f167b0c9aa151b89a9447ed/Extended%20Version%20Source%20Files/NanoProcessor.srcs/constrs_1/new)**: Contains constraint files that define pin assignments and properties for the FPGA, including clock signals, LEDs, 7-segment displays, and buttons.
  - **[/sim_1/new/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2/tree/512545d0872f321c4f167b0c9aa151b89a9447ed/Extended%20Version%20Source%20Files/NanoProcessor.srcs/sim_1/new)**: Includes simulation scripts and testbenches used to verify the functionality of the processor design.
  - **[/sources_1/new/](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2/tree/512545d0872f321c4f167b0c9aa151b89a9447ed/Extended%20Version%20Source%20Files/NanoProcessor.srcs/sources_1/new)**: Contains the VHDL files describing the processor architecture and ALU.

- **[NanoProcessor.xpr](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2/blob/512545d0872f321c4f167b0c9aa151b89a9447ed/Extended%20Version%20Source%20Files/NanoProcessor.xpr)**: The Vivado project file for the nano processor, which includes project settings and references to all the design files.

## Contributors
- [nchehan](https://github.com/nchehan)
- [ShanthishaShyamana](https://github.com/ShanthishaShyamana)
- [PasinduRavishan](https://github.com/PasinduRavishan)

---

**[Read the Detailed Design Document](https://github.com/InduwaraRathnayake/Nano-Processor-Version-2/blob/512545d0872f321c4f167b0c9aa151b89a9447ed/Group%2041.pdf)**

<i>This document details the development and implementation of our project. It includes all the source codes, testbench codes, timing diagrams, example test cases, and discussion.</i>

---
