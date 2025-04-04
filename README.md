# 🧪 MJHW9's ANAT0015 Project – StayGold Fluorescent Proteins Enable Superior Visualisation of Scar/WAVE Complex Dynamics in Melanoma Cells

This research was conducted under the supervision of **Professor Robert Insall** and **Dr. Lucija Mijanovic**. Their guidance, encouragement, and mentorship were instrumental throughout the course of this research.

I am also grateful to all members of the lab for creating such a collaborative and enjoyable environment.

This repository contains structured datasets and Python-based image analysis pipelines for the **ANAT0015 project** of MJHW9. The aim is to quantitatively evaluate the **photostability** and **spatial intensity distribution** of various GFP variants in **B16F1 melanoma cells**, using both **line-based** and **area-based** fluorescence intensity measurements.

---

## 📊 Dataset Overview

This study involves fluorescence imaging of migrating B16F1 cells expressing different GFP-tagged constructs:

- **EGFP**  
- **EGFP-WAVE2**  
- **StayGold-E138D-WAVE2**  
- **mStayGold2-WAVE2**

Two acquisition strategies were used:

1. **Line-based analysis**: Fluorescence intensities were sampled along lines extending from the cell edge.
2. **Area-based analysis**: Whole-cell intensities were recorded over time for photobleaching assessment.

---

## 🗂️ File Structure

### 🔹 `LineIntensity`
- Raw and processed intensity data from **line ROI** imaging.
- Includes:
  - Per-cell fluorescence normalization
  - SNR (Signal-to-Noise Ratio) calculation
  - SNR ± SEM barplots and front–back intensity profiles
  - Bootstrapped per-cell simulation (for significance testing)

### 🔹 `AreaIntensity`
- Time-lapse whole-cell intensity data (AT1–AT31, 0–300s).
- Compares bleaching profiles of four GFP constructs.
- Visualizes normalized intensity decay curves.

**💡 ImageJ Macro Used:**  
An [ImageJ macro script](AreaIntensity.ijm) was used to extract the full-cell ROI intensity over time from time-series `.nd2` or `.tif` stacks. This macro automates:
- Opening time-lapse images
- Selecting rectangular ROIs
- Measuring mean intensity per frame
- Exporting results to `.csv`/`.xlsx`

### 🔹 `LineIntensity_Empty_EGFP`
- Control dataset using **non-tagged EGFP**.
- Serves as a baseline for front–back intensity gradient validation.
- Includes normalized average line profile with SEM across 0–6 μm.

---

## ⚙️ Processing Overview

All Python analysis scripts follow these main steps:

1. **Filtering**: Only intensities within 6 μm of the membrane were analyzed.  
2. **Averaging**: Line segments were averaged as early (LT1–3) and late (LT4–6) signals.  
3. **Normalization**: Both per-cell and global normalization were applied.  
4. **SNR Calculation**: Defined as front signal divided by average background (2.5–6 μm).  
5. **Bootstrapping (Simulated)**: Synthetic per-cell data used to simulate SNR variation and test significance.  
6. **Plotting**: High-resolution `.svg` plots of:
   - SNR ± SEM barplots with statistical significance
   - Front–back intensity decay
   - Per-cell photobleaching curves

---

## 📦 Dependencies

To run the included analysis scripts, install the following Python packages:

```bash
pip install pandas numpy seaborn matplotlib scipy statsmodels openpyxl
```

---

## 🤖 Acknowledgement

As part of the data analysis process, I acknowledge the use of the generative AI tool **[ChatGPT-4](https://chatgpt.com)** to assist in the development and refinement of Python scripts.  

All code was written with full understanding, verified, and finalized by the author.

---

## 📬 Contact

For questions, suggestions, or collaboration inquiries, feel free to contact via email:

📧 **zcbtuao@ucl.ac.uk**
