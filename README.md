# Verilog HDL Project · June 1 – July 21, 2026
Portfolio-quality Verilog HDL designs covering combinational logic, sequential circuits, FSMs, and synthesis.

## Overview

* **Duration:** 8 weeks (20–25 hrs/week)
* **Tools:** EDA Playground (iverilog 12.0), GTKWave, Vivado WebPACK (Week 8 — synthesis only)
* **Deliverables:** 20+ designs with testbenches; 3 capstone projects (ALU, traffic light, UART)
* **Goal:** Solid HDL fundamentals + resume-ready portfolio

## Project Structure
```
week1–8/
├── designs/              # Verilog modules (.v files)
├── testbenches/          # Testbench files (.v)
└── waveforms/            # Simulation outputs (.vcd) — in .gitignore

week3/ and week8/
└── reports/              # Midterm and endterm reports

week8/
└── synthesis/            # Quartus schematic & timing reports

tools/                    # Simulation scripts, notes
docs/                     # Reference materials
```

## Weekly Milestones

**Week 1 (Jun 1–7) — Logic Gates & Adders**
* AND, OR, XOR, NAND, NOR gates
* Half adder, full adder
* First testbench with waveforms

**Week 2 (Jun 8–14) — Combinational Circuits**
* 2:4 decoder, 8:3 encoder, 4:1 mux
* Structural vs. behavioral modeling practice

**Week 3 (Jun 15–21) — Arithmetic Circuits**
* 4-bit ripple carry adder
* 8-bit adder/subtractor
* 4-bit magnitude comparator
* Midterm report submitted

**Week 4 (Jun 22–28) — 4-bit ALU (MIDTERM)**
* 8-operation ALU (ADD, SUB, AND, OR, XOR, NOT, <<, >>)
* Barrel shifter

**Week 5 (Jun 29–Jul 5) — Sequential Logic**
* D, JK, T flip-flops
* Counters (binary, decade, up-down)
* PISO shift register

**Week 6 (Jul 6–12) — Finite State Machines**
* Vending machine FSM (Moore)
* 1011 sequence detector (Mealy)
* Traffic light controller (3 states)

**Week 7 (Jul 13–19) — Real-World Protocols**
* Traffic light FSM (polished, pedestrian mode)
* UART transmitter (configurable baud rate)
* Frequency divider

**Week 8 (Jul 20–21) — Synthesis (ENDTERM)**
* Synthesize ALU and traffic light in Quartus
* RTL schematic screenshots + timing reports
* Final report submitted

## Readings

1. **Mano & Ciletti, Digital Design** — Chapters 1–7 (primary theory)
2. **NPTEL IIT Guwahati — Digital Design with Verilog**
   - Theory lectures: Lec 2, 3, 8, 9
   - Verilog syntax: Lec 16, 17, 20
3. **Palnitkar, Verilog HDL** — Chapters 3–6 (syntax reference)
4. **FreeRange Verilog** — Quick syntax lookup
5. **Wilson, Design Recipes for FPGAs** — Weeks 7–8 advanced topics

## Resources

* **EDA Playground:** [edaplayground.com](https://edaplayground.com) (primary simulator)
* **GTKWave:** [gtkwave.sourceforge.net](http://gtkwave.sourceforge.net)
* **Stack Overflow:** [verilog] tag

---
Last updated: June 9, 2026
