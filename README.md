# 8×8 RAM Design using Verilog

This project implements an **8×8 Random Access Memory (RAM)** using **Verilog HDL**.

### What is implemented?

* Designed an **8×8 RAM** with 8 memory locations, each storing 8-bit data.
* Implemented **read and write operations** using a write-enable signal.
* Added **reset logic** to initialize the memory.
* Created a **Verilog testbench** to verify read/write operations.
* Generated a **VCD waveform** for simulation and verification using GTKWave.

### Tools

**Verilog HDL | Icarus Verilog | GTKWave**

### Files

* `ram.v` — RAM design/RTL code
* `ram_tb.v` — Testbench for simulation

### How to Run

Compile the Verilog files:

```bash
iverilog -o ram_sim ram.v ram_tb.v
```

Run the simulation:

```bash
vvp ram_sim
```

This generates:

```text
ram.vcd
```

Open the waveform in GTKWave:

```bash
gtkwave ram.vcd
```

### Expected Result

The testbench writes **5** to the 4th memory location and **10** to the 5th memory location, then reads both locations to verify the stored data.
