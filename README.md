# 🚦 Verilog-Based Train Traffic Control System (TTCS)

## 📘 Overview
This Verilog project simulates a smart **Train Traffic Control System** that prioritizes 4 types of trains and avoids collisions by allowing only one train to pass through a critical junction based on priority.

### ✅ Features:
- Priority arbitration logic for 4 train types
- Only one train is allowed to pass at a time
- Collision-free control logic using simple Verilog

---

## 🚉 Train Priority Levels
| Bit | Train Type       | Priority |
|-----|------------------|----------|
| 3   | Emergency Train  | Highest  |
| 2   | Passenger Train  | 2        |
| 1   | Express Train    | 3        |
| 0   | Goods Train      | Lowest   |

---

## 📁 File Structure

| File               | Description                                      |
|--------------------|--------------------------------------------------|
| `train_controller.v` | Contains the Verilog logic to prioritize trains |
| `train_tb.v`         | Testbench to simulate various input combinations |
| `README.md`          | This file – documentation and instructions      |

---

## 💻 How to Simulate in VS Code

### Prerequisites:
- VS Code with Verilog and Icarus extensions installed
- Icarus Verilog installed (`iverilog`, `vvp`)
- Terminal access in VS Code (`Ctrl + backtick`)

### 📦 Compile:
```bash
iverilog -o train_ttcs train_tb.v train_controller.v
```

### ▶️ Run Simulation:
```bash
vvp train_ttcs
```

### 📄 Expected Output:
```
Time    Request   Pass
0       0000      0000
10      0001      0001
20      0011      0010
30      0110      0100
40      1111      1000
50      1000      1000
```

---

## 🌈 Optional: Generate Waveform (GTKWave)

To view simulation visually:
1. Add to `train_tb.v`:
   ```verilog
   $dumpfile("wave.vcd");
   $dumpvars(0, train_tb);
   ```
2. Run:
   ```bash
   iverilog -o train_ttcs train_tb.v train_controller.v
   vvp train_ttcs
   gtkwave wave.vcd
   ```

---

## 🧠 Logic Summary

- Input: `train_req[3:0]` — train request signals
- Output: `train_pass[3:0]` — one-hot encoded output; only the highest-priority train is allowed

---

## 📬 Author

**Project by:** M.S. Varma  
**Created:** July 2025  
**Language:** Verilog HDL

---

## 📜 License
Open-source for educational use. Feel free to modify and use.
