🚦 Traffic Signal Optimization Simulator

A MATLAB-based traffic management simulation that dynamically selects traffic signals based on traffic density and provides priority to simulated emergency vehicles.

The system simulates vehicle arrivals at a four-way intersection, analyzes traffic conditions, dynamically determines green-light timing, and evaluates overall traffic performance through a live dashboard.

---

## 📌 Project Overview

Traditional traffic signals often operate using fixed timing intervals regardless of the number of vehicles waiting.

This project demonstrates a **dynamic traffic signal optimization approach** where the signal decision is based on simulated traffic conditions.

The system continuously:

**Generates traffic → Detects traffic density → Selects signal → Calculates green time → Processes vehicles → Updates traffic → Repeats**

An additional **emergency vehicle priority mechanism** allows an emergency direction to override normal traffic-density-based signal selection.

---

## ✨ Features

* 🚗 Simulated vehicle arrivals
* 🚦 Four-way traffic intersection
* 📊 Real-time traffic-density monitoring
* 🧠 Automatic busiest-direction detection
* ⏱️ Dynamic green-light timing
* 🚘 Vehicle-flow simulation
* 🚑 Emergency vehicle priority
* 📈 Live traffic-density graph
* 🖥️ Interactive MATLAB dashboard
* 🔄 Multi-cycle simulation
* 📊 Traffic performance analysis
* 📉 Traffic clearance-rate calculation
* ⏳ Average waiting-vehicle analysis
* 🏆 Performance classification

---

## 🛠️ Technologies Used

* **MATLAB**
* MATLAB Graphics
* MATLAB GUI controls
* Basic simulation algorithms
* Randomized traffic generation
* Data visualization

---

## 🧩 System Architecture

```text
             ┌─────────────────────┐
             │   Vehicle Arrival   │
             └──────────┬──────────┘
                        │
                        ▼
             ┌─────────────────────┐
             │ Traffic Density     │
             │ Analysis            │
             └──────────┬──────────┘
                        │
                        ▼
             ┌─────────────────────┐
             │ Emergency Vehicle   │
             │ Detection           │
             └──────────┬──────────┘
                        │
                 ┌──────┴──────┐
                 │             │
              Emergency      Normal
                 │             │
                 ▼             ▼
          ┌────────────┐  ┌────────────┐
          │ Emergency  │  │ Busiest    │
          │ Priority   │  │ Direction  │
          └──────┬─────┘  └──────┬─────┘
                 │               │
                 └───────┬───────┘
                         ▼
              ┌─────────────────────┐
              │ Green-Light Timing  │
              └──────────┬──────────┘
                         │
                         ▼
              ┌─────────────────────┐
              │ Vehicle Processing  │
              └──────────┬──────────┘
                         │
                         ▼
              ┌─────────────────────┐
              │ Traffic Update      │
              └──────────┬──────────┘
                         │
                         ▼
              ┌─────────────────────┐
              │ Performance         │
              │ Analysis            │
              └─────────────────────┘
```

---

## 🚦 How the System Works

### 1. Traffic Initialization

The simulation begins with vehicles distributed across four directions:

```text
North = 25 vehicles
South = 18 vehicles
East  = 10 vehicles
West  = 30 vehicles
```

These values represent the initial traffic queues.

---

### 2. Vehicle Arrival Simulation

During every simulation cycle, new vehicles are generated randomly for each direction.

This represents continuously arriving traffic.

The simulated arrival range is:

```text
1–5 vehicles per direction per cycle
```

---

### 3. Traffic Density Detection

The system compares the number of vehicles waiting in all four directions.

Under normal conditions, the direction with the highest traffic density receives the green signal.

Example:

```text
North : 12
South : 25
East  : 8
West  : 17
```

The system selects:

```text
GREEN → SOUTH
```

---

### 4. Emergency Vehicle Priority

An emergency vehicle is randomly simulated during the traffic cycle.

When an emergency vehicle is detected:

```text
Emergency detected
        ↓
Emergency direction selected
        ↓
Green signal assigned
        ↓
Emergency traffic receives priority
```

The emergency mode overrides normal traffic-density selection.

---

### 5. Dynamic Green-Light Timing

The green-light duration depends on the traffic density.

| Vehicles Waiting | Green Time |
| ---------------: | ---------: |
|             1–10 | 10 seconds |
|            11–20 | 20 seconds |
|            21–30 | 30 seconds |
|         Above 30 | 40 seconds |

Emergency priority uses:

```text
40 seconds
```

---

### 6. Vehicle Processing

The simulator estimates the number of vehicles that can pass during the green phase.

The current simulation assumes approximately:

```text
0.8 vehicles / second
```

The system also ensures that it never removes more vehicles than are actually waiting.

---

### 7. Live Dashboard

The MATLAB dashboard displays:

* Traffic density
* Current green direction
* Signal priority mode
* Green-light duration
* Current simulation cycle
* Vehicles passed
* Vehicles waiting
* Emergency events
* Traffic-density graph
* Final performance

---

## 📊 Performance Metrics

The system evaluates its performance using:

### Traffic Clearance Rate

```text
Clearance Rate =
(Total Vehicles Passed / Total Vehicles Available) × 100
```

### Average Waiting Vehicles

```text
Average Waiting =
Total Waiting Vehicles / Number of Simulation Cycles
```

### Performance Classification

The simulator classifies the result as:

```text
EXCELLENT
GOOD
MODERATE
NEEDS IMPROVEMENT
```

based on clearance rate and average waiting traffic.

---

## 🖥️ Dashboard

The final dashboard contains four major sections:

```text
┌───────────────────────────────────────────────┐
│       TRAFFIC SIGNAL OPTIMIZATION SYSTEM      │
├─────────────┬─────────────────┬───────────────┤
│   Traffic   │    Live         │    Signal     │
│   Density   │  Intersection   │    Status     │
│             │                 │               │
│ North       │       🚦        │ Green         │
│ South       │                 │ Priority      │
│ East        │                 │ Timing        │
│ West        │                 │ Cycle         │
├─────────────┴─────────────────┼───────────────┤
│       Traffic Density Graph   │ Performance   │
│                               │ Analysis       │
└───────────────────────────────┴───────────────┘
```

---

## 📁 Project Structure

```text
Traffic-Signal-Optimization-Simulator/
│
├── traffic_signal_dashboard_final.m
│
├── README.md
│
├── screenshots/
│   ├── dashboard.png
│   ├── simulation.png
│   └── results.png
│
└── results/
    ├── traffic_density.png
    └── performance_results.png
```

---

## ▶️ How to Run

### Step 1 — Open MATLAB

Open MATLAB or MATLAB Online.

### Step 2 — Open the Project Folder

Open:

```text
Traffic-Signal-Optimization-Simulator
```

### Step 3 — Open the MATLAB File

Open:

```text
traffic_signal_dashboard_final.m
```

### Step 4 — Run

Either press the **Run ▶️** button or enter:

```matlab
traffic_signal_dashboard_final
```

### Step 5 — Start Simulation

Click:

```text
START
```

The dashboard will begin the 15-cycle simulation.

---

## 🔬 Simulation Parameters

| Parameter               |            Value |
| ----------------------- | ---------------: |
| Initial North Traffic   |               25 |
| Initial South Traffic   |               18 |
| Initial East Traffic    |               10 |
| Initial West Traffic    |               30 |
| Simulation Cycles       |               15 |
| Vehicle Arrival Range   |              1–5 |
| Normal Green Time       |        10–40 sec |
| Emergency Green Time    |           40 sec |
| Emergency Probability   |              20% |
| Vehicle Processing Rate | 0.8 vehicles/sec |

---

## 📈 Example Simulation Output

A typical simulation produces a report similar to:

```text
========================================
       FINAL PERFORMANCE REPORT
========================================

Initial Vehicles      : 83
New Vehicles Arrived  : 120
Vehicles Passed       : 150
Average Waiting       : 24.50
Clearance Rate        : 73.89%
Emergency Events      : 3
Performance Level     : GOOD

========================================
```

The exact results vary between executions because vehicle arrivals and emergency events are simulated randomly.

---

## 💡 Why This Project Is Useful

This project demonstrates how traffic signals can be modeled as a **dynamic decision-making system** rather than a fixed timer.

It provides a foundation for more advanced intelligent transportation systems involving:

* Traffic monitoring
* Adaptive signal control
* Emergency response
* Intelligent transportation systems
* Data-driven traffic management
* AI-based traffic prediction

---

## 🚀 Future Improvements

Possible future versions include:

* 🤖 Machine-learning-based traffic prediction
* 📷 Computer-vision vehicle detection
* 🚑 Real emergency-vehicle detection
* 🚦 Multi-intersection coordination
* 🗺️ City-scale traffic simulation
* 📡 IoT sensor integration
* 📱 Mobile monitoring application
* ☁️ Cloud-based traffic analytics
* 🧠 Reinforcement-learning-based signal optimization
* 🚗 Real-time camera integration

---

## 🎯 Learning Outcomes

Through this project, the following concepts are demonstrated:

* MATLAB programming
* Simulation modeling
* Conditional decision-making
* Random data generation
* Data visualization
* GUI development
* Signal-control logic
* Performance evaluation
* Basic optimization concepts
* Engineering problem solving

---

## ⚠️ Disclaimer

This project is an **educational simulation** and does not represent a certified real-world traffic-control system.

The traffic arrivals, vehicle-flow rate, emergency events, and signal timing are simulated assumptions.

Real-world deployment would require validated traffic models, sensors, safety mechanisms, regulatory approval, and extensive testing.

---

## 👩🏻‍💻 Author

**Annapoorna**

Electronics & Communication Engineering

---

## ⭐ Project Highlights

```text
MATLAB
   +
Traffic Simulation
   +
Dynamic Signal Control
   +
Emergency Priority
   +
Live Dashboard
   +
Performance Analysis
```

**A simulation-based approach to intelligent traffic signal management.**

---

## 📜 License

This project is intended for educational and portfolio purposes.

You are free to study, modify, and extend the project with appropriate attribution.
