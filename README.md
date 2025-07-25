# Hexagon Detection with Normalized Cross Correlation in MATLAB

This project demonstrates how to detect repeated hexagon shapes in a given image using **normalized cross correlation** with MATLAB. The program extracts a template of a hexagon and locates its instances in the input image.

## 📁 Files

- `MATLAB-Hexagon-Finder.m`: Main MATLAB script.
- `shape.bmp`: Source image that includes multiple hexagon shapes.
- `hexagon.bmp`: The extracted hexagon template used for matching.

## 🧠 Techniques Used

- Grayscale conversion using `rgb2gray()`
- Template creation from a region of interest
- Normalized cross-correlation with `normxcorr2()`
- Thresholding to identify matching regions
- Visualization using `text()` and `plot()` to mark matches

## ▶️ How to Run

1. Open MATLAB.
2. Place `shape.bmp` and `hexagon_detection.m` in the same folder.
3. Run the script by typing:
```matlab
MATLAB-Hexagon-Finder
```
The program will:
- Show the original and template images
- Perform normalized cross correlation
- Mark detected hexagons with "+" symbols
- Display the number of detected hexagons

## 📌 Note
The hexagon template is extracted once from the top-left 30×30 region of the image and saved as hexagon.bmp. You can modify this region if needed.

## 📷 Example Output
- Hexagon matches marked in blue with "+"
- Correlation map shown
- Total count displayed on the final plot

## 🚫 License
Copyright (c) 2025 Seda Yalçin.  
This project is for educational purposes only and may not be copied, modified, distributed, or used for any commercial or academic purpose without explicit written permission from the author.  
All rights reserved.
