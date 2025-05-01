## ✈️ SkyWave Excotus – Autopilot Controller for Amphibious Aircraft

This autopilot system was developed as part of the **SkyWave Excotus** project, a 19-passenger amphibious regional aircraft designed for short-to-medium range operations on both land and water. The goal of the controller is to enable autonomous waypoint-following capability for the aircraft, ensuring stable and accurate flight path tracking using onboard navigation and feedback control systems.

## Waypoint-Following Autopilot Controller (Simulink)

This Simulink model implements a waypoint-following autopilot for the SkyWave aircraft using modular control loops and decision logic. The system allows the aircraft to autonomously navigate through a sequence of waypoints based on current position, bearing, and altitude feedback.

### Key Features

- **Waypoint Switching Logic**: Automatically increments to the next waypoint once the aircraft is within a specified distance threshold.
- **Position and Bearing Calculation**: Computes distance and relative bearing from current position to the active waypoint.
- **Lateral and Longitudinal Autopilots**:
  - **Lateral Autopilot**: Controls heading using relative bearing and Euler angles.
  - **Longitudinal Autopilot**: Regulates altitude using desired height and rate-of-climb.
- **Control Surface Commands**: Outputs elevator, aileron, rudder, and throttle commands to drive the aircraft toward the target waypoint.
- **Aircraft Dynamics Integration**: Connected to a 6-DOF aircraft model to simulate realistic behavior.
- **Flight Visualization**: Includes output displays and an XY tracking graph.

### Outputs

- Aircraft position and heading during waypoint transitions.
- Control effort (surface deflections and throttle).
- Altitude and distance-to-waypoint monitoring.
- Optional integration with FlightGear or plotting tools.

### Use Case

This model supports the development and testing of autonomous navigation logic for the SkyWave amphibious aircraft and can be adapted for similar UAV or general aviation applications.

### How to Run the Simulation
1. Open **MATLAB R2024b**
2. Run:
```text
   SkyWaveGeom.m
   ```
3. This will automatically open the Simulink model:
   ```text
   SkywaveAutopilot.slx
   ```
4. Open your **system terminal** and navigate to the project directory:
   ```bash
   cd path/to/your/project
   ```
5. Run the FlightGear interface script:
   ```bash
   ./flightGearStart.sh
   ```
   **Note**: You must edit the `flightGearStart` script to include the correct path to where FlightGear is installed on your system.
6. Return to **Simulink** and click the **"Run"** button to start the simulation.
