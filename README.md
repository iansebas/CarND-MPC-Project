# CarND-MPC

---

### Write-up

#### 1. Compiling

The code compiles without errors using cmake and make.

#### 2. The Model
The mathematical model is as follow (107-112 in MPC.cpp:

'''
x1 =(x0 + v0 * cos(psi0) * dt)
y1 =(y0 + v0 * sin(psi0) * dt)
psi1 = (psi0 + v0 * delta0 / Lf * dt)
v1 = (v0 + a0 * dt)
cte1 = ((f0 - y0) + (v0 * sin(epsi0) * dt))
epsi1 = ((psi0 - psides0) + v0 * delta0 / Lf * dt)
'''
where 1 represents the next state, and 0 the current state.

#### 3. Time Step and Elapse Duration

10 timesteps with 0.05 duration were chosen. These parameters were chosen to calculate 0.5 s into the future. Timesteps between 10-20 were tried, but more timesteps did not help.

#### 3. Polynomial Fitting and Preprocessing

A polynomial of 2nd order is fitted through the waypoints (119 in main.cpp).

In line 116 of main.cpp, a coordinate transform is applied to do the optimization in the vehicle frame of reference.

#### 4. Latency

Delay index is applied in line 146 of MPC.cpp to account for the latency. I also tried applying delay before optimization (line 68 in MPC.cpp) but the results were unstable;

#### 5. Simulation

The car drives safely throught the simulated trip, as shown in vid.mp4