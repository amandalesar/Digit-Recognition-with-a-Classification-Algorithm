# Handwritten Digit Recognition: Multi-class Classification

I will use logistic regression to recognize handwritten digits (from 0 to 9). We will use a dataset that contains 5000 training examples of handwritten digits; this dataset is a subset of the MNIST handwritten digit dataset.

I will adapt my classifier from the first part of the third exercise from Andrew Ng’s Machine Learning Course on Coursera.

# Running the Project 

- Make sure you have MATLAB or Octave installed. 
- Clone the project to your local machine. 
- Run digitrecognition_multiclass.m. For a guided implementation, you can instead run the live script HandwrittenDigitRecognition_MulticlassClassification.mlx. 

# Project Details

I will use logistic regression to recognize handwritten digits (from 0 to 9). We will use a dataset that contains 5000 training examples of handwritten digits; this dataset is a subset of the MNIST handwritten digit dataset. First, we load in our data (mnistdata.mat).  Note that MATLAB indexing has no zero index; so the digit '0' is labeled as '10', while the numbers '1' to '9' are labeled as expected.

I will use multiple one-vs-all logistic regression models to build a multi-class classifier. I will train 10 separate logistic regression classifiers (one for each of my 10 classes, which in this case are the digits 0 through 9). This training is done in the function oneVsAll.m. 

Once we have trained our one-vs-all classifier, we can use it to predict the digit in a given image! We will predict the class for which our logistic regresion classifier outputs the highest probability, and return that class label. In our case, it will return which number we think is contained in the image!

Our training set accuracy for our multiclass logistic regression classifier is about 95.1%. 

