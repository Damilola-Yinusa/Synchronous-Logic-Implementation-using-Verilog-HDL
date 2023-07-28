# Synchronous Logic Implementation using Verilog HDL

This repository contains the design and simulation of synchronous logic components such as D-Latch, D Flip-Flop, 4-Bit Shift Register, and a 4-Bit Synchronous Parallel Load Shift Register with Counter, all implemented using Verilog HDL.

## D-Latch

The D-Latch is transparent, i.e., it reflects changes in input to the output as long as the enabled input is asserted. It has two inputs, D and enables, and one output, Q. Find the Verilog HDL code in `D_latch.v`.

## D Flip-Flop

The D Flip-Flop is a basic sequential machine. It responds only to the clock signal. The Verilog HDL code is written in a way that only the positive-edge transition of the clock allows the transfer of input D into Q. The code can be found in `D_FF.v`.

## 4-Bit Shift Register with Asynchronous Reset and Synchronous Load

This component includes a project that simulates a 4-Bit Shift Register design and a testbench in ModelSim. After successful simulation, the code is transferred to the FPGA board for testing.

## 4-Bit Synchronous Wrap-Around Up/Down Counter

The project includes a 4-Bit Synchronous Wrap-Around Up/Down Counter with Synchronous Up/Down Select and Count-Enabled and Asynchronous Reset. The functionality of the design is demonstrated in ModelSim before transferring to the FPGA.

## 4-Bit Synchronous Parallel Load Shift Register with Counter and Asynchronous Reset

This design involves a project that simulates a 4-Bit Synchronous Parallel Load Shift Register with a counter design and a testbench in ModelSim. Once the functionality of the design is demonstrated in ModelSim, it is implemented on the FPGA.

## Experimental Setup

- A Personal Computer (PC) with Altera Quartus II ISE 13.0 Service pack 1 Project Navigator
- DEO Demo Board with Cyclone III EP3C16F484C6 FPGA installed on a card with 10 input toggle switches, three pushbuttons, and four 7-Segment LED displays, among other components.
- A cable connected between the demo board and the PC using a USB interface in order to transfer design information from the PC to the Demo Board.

## Note

Remember that during your experimentation, you'll need to manually control all inputs using the toggle switches, except for the clock, which is controlled via a push button. After you program the design onto the FPGA, you'll be able to test its functionality. 

## Future Work

Future additions to this project might include more complex logic components and systems, aiming to explore the full capacity of Verilog HDL for designing and implementing synchronous logic systems.

## Contributors

This project welcomes contributions from the open-source community. Check out the CONTRIBUTING.md file for more information. 
