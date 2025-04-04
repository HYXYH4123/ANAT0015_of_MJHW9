original = getTitle();
stackSize = nSlices;

setBatchMode(true);
run("Clear Results");

for (i = 1; i <= stackSize; i++) {

    selectWindow(original);
    setSlice(i);

    run("Duplicate...", "title=temp duplicate");

    // Critical step: Convert image to 8-bit to avoid errors
    run("8-bit");

    // Threshold (only current slice)
    setAutoThreshold("Default dark no-reset slice");
    run("Convert to Mask", "method=Default background=Default black slice");

    // Fill holes and apply multiple dilations to connect fragmented regions
    run("Fill Holes");
    run("Dilate");
    run("Dilate");
    run("Dilate");
    run("Erode"); // Slightly shrink ROI boundary to refine the selection

    // Create ROI from binary mask
    run("Create Selection");

    // Check if ROI is empty (to prevent NaN results)
    if (selectionType() == -1) {
        print("Warning: No ROI detected at slice " + i);
        run("Select All"); // Measure the entire image if no ROI is detected
    }

    selectWindow(original);
    setSlice(i);
    run("Measure");

    selectWindow("temp");
    close();
}

updateResults();
setBatchMode(false);
