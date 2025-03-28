# LineIntensity.xlsx
This document contains raw fluorescence intensity measurements acquired along a line-shaped region of interest (ROI) across individual cells expressing EGFP-WAVE2, StayGold-E138D-WAVE2, or mStayGold2-WAVE2. 

Line intensity was measured along a straight line manually drawn from the cell periphery toward the nucleus, with larger distance values indicating closer proximity to the nucleus. For each cell, three such lines were drawn to account for variability and improve measurement reliability. The average intensity across the three lines was calculated as LT123Ave. In cells with time-lapse recordings, line intensity measurements were also performed after five minutes of continuous laser exposure to assess photobleaching. Similarly, three lines were drawn at this later time point, and the average intensity was recorded as LT456Ave.

## Column Names
- 'Date' - The date when the cell image was captured.
- 'Microscopy' - The name of the microscope used for imaging. Zeiss Elyra 7 is a widefield microscope, while Nikon SoRa is a confocal microscope.
- 'CellLine' - The cell line used for transfection to express GFPs; either KnockOut (KO) or WildType (WT).
- 'GFP' - The GFP variant used to transfect the B16F1 cell line. EGFP_W2 refers to EGFP-WAVE2; SG_W2 refers to StayGold-E138D-WAVE2; mSG2_W2 refers to mStayGold2-WAVE2.
- 'YFP' - The yellow or red fluorescent protein used for co-transfection. Not all cells are transfected with YFP. N1_mSL refers to Nap1-mScarlet.
- 'CellNo' - A unique identifier assigned to each cell.
- 'Distance' - The position along the measured line toward the nucleus (a larger value indicates closer proximity to the nucleus).
- 'LT1' - Initial intensity measured from line 1.
- 'LT2' - Initial intensity measured from line 2.
- 'LT3' - Initial intensity measured from line 3.
- 'LT4' - Final intensity measured from line 4 after five minutes of laser exposure, reflecting the photobleaching effect.
- 'LT5' - Final intensity measured from line 5 after five minutes of laser exposure, reflecting the photobleaching effect.
- 'LT6' - Final intensity measured from line 6 after five minutes of laser exposure, reflecting the photobleaching effect.
- 'LT123Ave' - The average intensity of LT1, LT2, and LT3.
- 'LT456Ave' - The average intensity of LT4, LT5, and LT6.
- 'Bleach' - The photobleaching ratio calculated as LT456Ave divided by LT123Ave.
- 'LT123AvePer' - The normalized LT123Ave intensity, calculated by dividing each value by the maximum LT123Ave for that CellNo.
- 'LT456AvePer' - The normalized LT456Ave intensity, calculated by dividing each value by the maximum LT456Ave for that CellNo.
