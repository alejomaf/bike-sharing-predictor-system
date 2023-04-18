# Bike Sharing Demand Prediction

This repository contains the code and analysis for predicting bike sharing demand using supervised and unsupervised machine learning techniques.

## Project Overview

Bike sharing systems have become increasingly popular around the world due to their ability to improve urban mobility, public health, and environmental sustainability. These systems generate large amounts of data, which can help us better understand people's movements within cities and the important events that occur in them. In this project, we utilize a dataset from a bike-sharing system to build a supervised learning model that predicts the number of rented bikes based on different factors, such as time of day, temperature, humidity, and weather conditions.

The main objective of this project is to demonstrate how supervised learning can be useful for predicting bike-sharing demand based on environmental and temporal conditions, which could help system operators improve bike availability and better meet customer needs.

## Dataset

The dataset used in this project is a collection of bike-sharing rental records from an automated system. It contains information about more than 17,000 rentals made every hour over a period of two years, from January 2011 to December 2012. Each record contains important details such as the date and time of the rental, weather conditions, and the number of bikes rented by registered and casual users.

## Methodology

We have applied various machine learning techniques to build predictive models for bike-sharing demand, such as:

- Data preprocessing and feature engineering
- Data visualization and correlation analysis
- Supervised learning: Random Forest
- Unsupervised learning: k-means clustering

We have evaluated the performance of these models using different metrics, such as mean squared error (MSE) and the coefficient of determination (R^2). The models were also validated using cross-validation techniques.

## Results

The results obtained from the predictive models are as follows:

- Random Forest:
  - Mean squared error: 1585.7507070555234
  - Coefficient of determination (R^2): 0.949921676677232
  - Cross-validation scores: [0.94951908, 0.94300248, 0.94702184, 0.9489082, 0.94803821]
  - Mean cross-validation score: 0.9472979615194731

## Conclusions

The study explored the use of supervised and unsupervised learning models to predict the number of rented bikes based on various factors such as climate, temperature, wind speed, humidity, and user type. The supervised learning model, based on Random Forest, showed a near-perfect fit to the data, although it may be subject to overfitting. On the other hand, the unsupervised learning model, based on the k-means algorithm, provided moderate results with room for improvement.

Both approaches have proven to be useful in addressing bike rental problems. However, the limitations identified in the critical discussion section should be considered when applying these models in different contexts and making decisions based on their results.

Adopting artificial intelligence and data analysis in the field of bike-sharing systems has the potential to significantly improve the quality of life in urban environments and promote a more sustainable and healthy cityscape.

## Requirements

- Python 3.x
- Pandas
- NumPy
- Scikit-learn
- Matplotlib
- Seaborn

## Usage

1. Clone this repository
2. Install the required packages
3. Run the Jupyter Notebook `bike_sharing_demand_prediction.ipynb` for a step-by-step analysis and prediction of bike-sharing demand.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
