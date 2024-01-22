MATLAB Computer Vision practice
------
Practice so far...

**1. Weighted grayscale image conversion (imageshow.m)**
- Luminosity method is used to adjust the color channel contributions to the grayscale image. I experimented with various weights. No significant change in appearance.
![Grayscale Image Conversion](output//weighted_grayscale_conversion.png)

**2. Horizontal and Vertical image flipping (imageman.m)**
- No built-in method used. Created loops to flip images both vertically and horizontally.
![Image vertical and horizontal flip](output//flipping.png)

**3. Convolution filters (convolution.m)**
- 2D convolution operation with various pre-defined filters can manipulate image.
![Image convolutional filters](output//convolution_filter.png)

**4. Image highligting (highlight_images.m and highlight.m)**
- Showing those pixels which are highly bright. With appropriate parameters, this method can reveal the concentration of surface light.
![Image highlighting](output//highlighting.png)

Projects
---
I worked on some projects as I go into the MATLAB to get more closer experience of writing Computer Vision ML programs.

**1. Handwritten Digit Recognition (projects/handwritten_digit_recognition)**
- Created a one-vs-all SVM model for classification of MNIST digits dataset.
- The model shows 94.30% test accuracy. Concepts learned: functions, MATLAB ML Toolkit, SVM FITCECOC function, creating custom evaluation like accuracy, CONFUSIONMAT function. 
