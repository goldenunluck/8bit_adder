# 8-Bit Hierarchical Carry Lookahead Adder

A structural 8-bit adder designed in Verilog. The architecture utilizes a dedicated **Carry Lookahead Adder (CLA)** module to compute carry propagation paths in parallel, feeding into a generated array of full adders to determine the arithmetic sum bits.

## File Structure

* `adder.v` - Top-level module coordinating the CLA engine and full adder generation loop.
* `carry_lookahead.v` - Combinational lookahead logic generating parallel `gen` and `prop` carries.
* `full_adder.v` - 1-bit full adder primitive computing structural sum bits.
* `tb_adder.v` - Exhaustive testbench checking combinatorial addition pairs.

## Hardware Architecture

The design relies on parallel carry-generation principles:
* **Generate (G):** $G_i = In0_i \cdot In1_i$
* **Propagate (P):** $P_i = In0_i + In1_i$
* **Lookahead Carry:** $C_i = G_i + (P_i \cdot C_{i-1})$

## Simulation & Verification

The project compiles with **Iverilog** and can be verified visually using **GTKWave**.

### Prerequisites
Ensure you have the tools installed (Ubuntu/Debian):
```bash
sudo apt-get install iverilog gtkwave
```

```bash
# Compile the design and testbench
iverilog -o design_adder *.v

# Run the simulation executable to generate the VCD waveform dump
vvp design_adder
```

### Viewing Waveforms
Open the generated `.vcd` file inside GTKWave to trace signal behaviors:
```bash
gtkwave *.vcd 
```
