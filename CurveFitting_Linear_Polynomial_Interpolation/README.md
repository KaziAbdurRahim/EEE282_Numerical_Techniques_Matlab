📈 Curve Fitting: Linear & Polynomial Interpolation

This folder contains MATLAB scripts and functions for implementing and visualizing interpolation techniques using linear and polynomial methods. These materials support Experiment 05 of the EEE282 Numerical Techniques Lab at BRAC University.

🧠 What You'll Learn

- How to estimate intermediate values using linear interpolation
- How to apply polynomial interpolation for curve fitting
- How to visualize interpolated curves and compare them with raw data
- How to experiment with different interpolation methods and datasets
- How to use custom Function and MATLAb built in Function for interpolation.

📂 Folder Contents

| File Name            | Description                                                            |
| -------------------- | ---------------------------------------------------------------------- |
| LinearInterpolMain.m | Script for performing and plotting linear interpolation on sample data |
| PolyInterpolMain.m   | Script for polynomial interpolation with visualization                 |
| linear_interp.m      | Function implementing basic linear interpolation (many points)         |
| linear_interpol.m    | Alternate linear interpolation function for comparison (only one pont) |
| poly_interp01.m      | Function for first-order polynomial interpolation                      |
| poly_interpol2.m     | Function for second-order polynomial interpolation                     |

🚀 How to Use

1. Open MATLAB and navigate to this folder.
2. Run any of the scripts (`LinearInterpolMain.m`, `PolyInterpolMain.m`, etc.) to see interpolation plots.
3. Use the function files (`linear_interp.m`, `poly_interpol2.m`, etc.) in your own projects or assignments.
4. Modify the scripts to experiment with different datasets and interpolation orders.

📌 Tips for Students

- Use `poly_interpol2.m` when you want to fit a curve through multiple points with higher accuracy.
- Compare results from `linear_interp.m` and `poly_interp01.m` to understand interpolation precision.
- Try plotting error curves to evaluate interpolation performance.
- Explore how interpolation differs from regression in terms of assumptions and applications.

📚 Related Topics

- Numerical Interpolation
- Polynomial Approximation
- Data Visualization in MATLAB
- Engineering Applications of Curve Fitting
