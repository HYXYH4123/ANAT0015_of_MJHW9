# 📊 Data Analysis for MJHW9's ANAT0015 Project

This repository contains raw fluorescence intensity data and Python-based analytical pipelines for the **MJHW9 ANAT0015** project. The study focuses on comparing the **photostability** and **signal distribution** of various GFP variants in migrating **B16F1 melanoma cells**, using both **line-based** and **area-based** intensity acquisition strategies.

---

## 📁 Files Overview

### 1. `LineIntensity`
- **Description**: Contains raw fluorescence intensity values acquired along line-shaped regions of interest (ROIs) in B16F1 cells expressing:
  - `EGFP-WAVE2`
  - `StayGold-E138D-WAVE2`
  - `mStayGold2-WAVE2`
- **Contents**: Includes processed `.xlsx` data, and a full Python script for:
  - Signal filtering & normalization
  - SNR (signal-to-noise ratio) calculation
  - Bootstrapped SNR barplot with statistical significance annotations
  - Distance-based intensity profile plots

### 2. `AreaIntensity`
- **Description**: Contains whole-cell intensity time series data collected from rectangular ROIs, comparing photobleaching behavior across:
  - `EGFP`
  - `EGFP-WAVE2`
  - `StayGold-E138D-WAVE2`
  - `mStayGold2-WAVE2`
- **Contents**:
  - Raw `.xlsx` data (AT1–AT31, over 5 minutes)
  - Python script for:
    - Per-cell normalization
    - Representative photobleaching curve plotting for four selected cells

### 3. `LineIntensity_Empty_EGFP`
- **Description**: Contains intensity values from cells expressing **EGFP only** (no fusion tag), serving as a **control** for background distribution analysis.
- **Contents**:
  - `.xlsx` raw data
  - Python script for:
    - Cell-wise normalization
    - Global population average plot across 0–6 μm from the membrane

---

## 🧪 Analysis Methods

Key processing steps used across analyses include:

1. **Filtering**: Only data within 6 μm of the cell membrane was retained.
2. **Averaging**: For line data, LT1–3 and LT4–6 were averaged to represent early (t = 0 s) and late (t = 300 s) signals.
3. **Normalization**: Intensity values were normalized within each cell; some datasets were globally scaled for comparison.
4. **SNR Calculation**: SNR = max(signal) / mean(background); noise defined as average intensity from 2.5–6 μm.
5. **Bootstrapping**: Simulated per-cell SNR distributions used for plotting SEM and significance.
6. **Plotting**: All plots were saved as high-resolution `.svg` images for publication-ready quality.

---

## 📦 Dependencies

To run the Python scripts, ensure you have the following packages installed:

```bash
pandas
numpy
seaborn
matplotlib
scipy
statsmodels
openpyxl

---

## 🤖 Acknowledgement

As part of the data analysis process, I acknowledge the use of the generative AI tool **[ChatGPT-4](https://chatgpt.com)** to assist in the development and refinement of Python scripts.  
All code was written with full understanding, verified, and finalized by the author.

---

## 📬 Contact

For questions, suggestions, or collaboration inquiries, feel free to [open an issue](https://github.com/your-repo/issues) or contact via email:

📧 **zcbtuao@ucl.ac.uk**
