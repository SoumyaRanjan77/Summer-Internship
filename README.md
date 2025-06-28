# Design and Hardware Simulation of an SVM-Based Classifier for Image Processing Applications

## 📌 Project Overview

This project was developed as part of a summer internship at the Integrated Test Range (ITR), DRDO, Chandipur. It focuses on implementing a hardware simulation of a Support Vector Machine (SVM)-based image classifier using Verilog and AMD Vivado, aimed at detecting aerial objects (such as missiles or UAVs) from foggy grayscale images.

## 🛠 Technologies Used

- **Verilog HDL**
- **AMD Vivado** (for simulation and synthesis)
- **Python** (for image preprocessing and model training)
- **OpenCV** (feature extraction using HOG & CLAHE)
- **SVM (Support Vector Machine)**

## 🧠 Key Features

- Image preprocessing using CLAHE to enhance contrast in foggy images
- Feature extraction using Histogram of Oriented Gradients (HOG)
- SVM model trained in Python and parameters extracted for FPGA deployment
- Verilog implementation of the SVM classifier logic
- Simulation and testing on AMD Vivado

## 📁 Project Structure

├── dataset/ # Foggy grayscale input images
├── preprocessing/ # Python scripts for CLAHE + HOG
├── svm_model/ # SVM training and weight extraction
├── verilog/ # Verilog HDL files for SVM logic
├── vivado_project/ # Vivado simulation files
└── report/ # Project report and documentation


## ✅ Results

- Successfully simulated the SVM classifier in Vivado with sample test vectors.
- Real-time classification performance suitable for hardware deployment in defense systems.

## 🔗 Appendix

- Dataset used: [Link to Dataset (QR code also included in report)](https://example.com/dataset-link)
- Project Report: [PDF Report](./report/DRDO_SVM_Project_Report.pdf)

## 👥 Authors

- **Soumya Ranjan Sahu** – B.Tech, Electronics & Instrumentation, NIT Rourkela  
- **Ashish Sharma** – B.Tech, Electronics & Instrumentation, NIT Rourkela

## 📅 Duration

**May 1 – June 30, 2025**
