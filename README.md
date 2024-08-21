# Image Segmentation and Object Measurement in MATLAB

## Overview

This MATLAB script performs image segmentation and object measurement by isolating color channels, thresholding, noise removal, and calculating the diameter of objects in the image. The script processes a given image (`rugby.jpg` in this case) to extract and analyze specific features.

## Features

- **Color Plane Segmentation**: The image is divided into its red, green, and blue color planes.
- **Thresholding**: The blue color plane is thresholded to create a binary image, isolating areas of interest.
- **Noise Removal**:
  - Holes within objects are filled.
  - Blobs on the border of the image are removed.
  - Small blobs (noise) are removed using morphological operations.
- **Object Measurement**: The diameter of objects within the processed image is measured.

## Requirements

- MATLAB software (compatible with the version supporting `imread`, `imshow`, `im2bw`, `imfill`, `imclearborder`, `strel`, `imopen`, and `regionprops` functions).
- Image file named `rugby.jpg` (or any other image you wish to analyze).

## Usage

1. **Prepare the Image**:
   - Ensure you have the image file (`rugby.jpg`) in the same directory as the MATLAB script.

2. **Run the Script**:
   - Load and run the MATLAB script. The script will:
     - Display the original image and its RGB color planes.
     - Apply thresholding on the blue plane.
     - Perform noise removal.
     - Measure and display the diameter of objects in the image.

3. **Output**:
   - The script produces multiple figures:
     - Figure 1: Displays the original image and its RGB color planes.
     - Figure 2: Shows the thresholded image and results of various noise removal steps.
     - Figure 3: Displays the original image with an interactive distance measurement tool.

## Customization

- **Threshold Level**:
  - The threshold level is set to `0.37` by default. This can be adjusted in the line:
    ```matlab
    level = 0.37;
    ```
  - Modify this value to fine-tune the binary image based on your specific image characteristics.

- **Morphological Operations**:
  - The script uses a disk-shaped structuring element with a radius of `7` pixels to remove small blobs:
    ```matlab
    se = strel('disk', 7);
    ```
  - Change the size or shape of the structuring element for different noise removal effects.

## Conclusion

This MATLAB script is a powerful tool for segmenting images and measuring objects based on color intensity. It can be adapted for various image analysis tasks by tweaking the threshold level and morphological operations.

Feel free to experiment with different images and parameters to suit your specific needs!
