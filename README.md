# Verilog HDL Project · June 1 – July 21, 2026

**Portfolio-quality Verilog HDL designs covering combinational logic, sequential circuits, FSMs, and synthesis.**

## Overview
- **Duration:** 8 weeks (20–25 hrs/week)
- **Tools:** iverilog, GTKWave, Vivado WebPACK (Week 8)
- **Deliverables:** 20+ designs with testbenches; 3 capstone projects (ALU, traffic light, UART)
- **Goal:** Solid HDL fundamentals + resume-ready portfolio

## Project Structure
\\\
week1–8/
├── designs/          # Verilog modules (.v files)
├── testbenches/      # Testbench files (.v)
└── waveforms/        # Simulation outputs (.vcd) — in .gitignore

week4/ and week8/
└── reports/          # Midterm and endterm reports

week8/
└── synthesis/        # Vivado RTL schematic & timing reports

tools/               # Simulation scripts, notes
docs/                # Reference materials
\\\

## Weekly Milestones

### **Week 1** (Jun 1–7) — Logic Gates & Adders
- [ ] AND, OR, XOR, NAND, NOR gates
- [ ] Half adder, full adder
- [ ] First testbench with waveforms

### **Week 2** (Jun 8–14) — Combinational Circuits
- [ ] 2:4 decoder, 8:3 encoder, 4:1 mux
- [ ] Structural vs. behavioral modeling practice

### **Week 3** (Jun 15–21) — Arithmetic Circuits
- [ ] 4-bit ripple carry adder
- [ ] 8-bit adder/subtractor
- [ ] 4-bit magnitude comparator

### **Week 4** (Jun 22–28) — 4-bit ALU (MIDTERM)
- [ ] 8-operation ALU (ADD, SUB, AND, OR, XOR, NOT, <<, >>)
- [ ] Barrel shifter
- [ ] Midterm report submitted

### **Week 5** (Jun 29–Jul 5) — Sequential Logic
- [ ] D, JK, T flip-flops
- [ ] Counters (binary, decade, up-down)
- [ ] PISO shift register

### **Week 6** (Jul 6–12) — Finite State Machines
- [ ] Vending machine FSM (Moore)
- [ ] 1011 sequence detector (Mealy)
- [ ] Traffic light controller (3 states)

### **Week 7** (Jul 13–19) — Real-World Protocols
- [ ] Traffic light FSM (polished, pedestrian mode)
- [ ] UART transmitter (configurable baud rate)
- [ ] Frequency divider

### **Week 8** (Jul 20–21) — Synthesis (ENDTERM)
- [ ] Synthesize ALU and traffic light in Vivado
- [ ] RTL schematic screenshots + timing reports
- [ ] Final report submitted

## How to Run Simulations

### Setup (one-time)
\\\ash
# Install iverilog and GTKWave
# Windows (WSL2) / Linux:
sudo apt-get install iverilog gtkwave

# macOS:
brew install icarus-verilog gtkwave
\\\

### Run a Design
\\\ash
cd week1
iverilog -o waveforms/output.vvp designs/and_gate.v testbenches/and_gate_tb.v
vvp waveforms/output.vvp
gtkwave waveforms/output.vcd &
\\\

## Git Workflow

Commit after every coding session:

\\\ash
git add week1/designs/and_gate.v
git commit -m "Week 1: AND gate (behavioral modeling)"
git push origin main
\\\

## Reading Order
1. **Mano & Ciletti, Ch 1–7** (primary)
2. **FreeRange Verilog** (syntax reference)
3. **Wilson, Design Recipes** (Weeks 7–8)

## Resume Bullets
- Week 4: "Designed and simulated a 4-bit ALU with 8 operations in Verilog; verified with exhaustive testbenches."
- Week 6: "Implemented Moore and Mealy FSMs (vending machine, sequence detector) with state diagrams."
- Week 8: "Synthesized RTL designs in Vivado WebPACK; analyzed timing reports and critical path."

## Resources
- **EDA Playground:** edaplayground.com (backup simulator)
- **GTKWave:** gtkwave.sourceforge.net
- **Stack Overflow:** [verilog] tag
- **r/FPGA:** reddit.com/r/FPGA

**Last updated:** June 9, 2026
