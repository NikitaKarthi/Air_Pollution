# Air Pollution
### Abstract:
Air Pollution is an increasing concern in cities all over India. The number of people who suffer from pollution related
diseases are also on the rise. In this project, the air pollution data from Kanpur city is analysed and its features are
extracted. Then an ARIMA model and an LSTM model is trained using the features. The linear and non-linear
components are combined using a hybrid ARIMA-LSTM ensemble model.
### Data Collection:
The Air Pollution Data was collected from the Central Pollution Control Board of India for the City Kanpur.
### ARIMA:
Auto Regressive Integrated Moving Average (ARIMA) model. Its constituent components are -
1) AR which stands for Autoregression in which previous observations are used for making predictions.
2) I which stands for Integrated, where the time series is differenced to make it stationary.
3) MA which stands for Moving Average, in which previous errors are used for making predictions.
### LSTM:
The Long Short Term Memory model works to retain memory for longer periods of time by using three gates -
1) Input Gate - Decides the portion of the current input to use.
2) Output Gate - Determines which portion of the current state to output.
3) Forget Gate - Decides which portion of the old state to discard.
### Hybrid Model:
The Hybrid model is an ensemble of ARIMA and LSTM.
ensemble = (alpha)*(LSTM) + (1-alpha)*(ARIMA),
where the optimal value of alpha is around 0.8.
### Future Work
Various hybrid model using combinations of deep learning, statistical, optimization and fuzzy approaches
could be used to find out the best performing predictive model.
### Running the Code
This code uses two different programming languages R and Python.
R is used for the ARIMA model and Python is used for the LSTM model.

R can be used in jupyter notebooks by the following command,
```bash
$ conda create -n r_env r-essentials r-base
```
Then activate the environment using,
```bash
$ conda activate r_env
$ conda install r-forecast r-rsample r-ggplot2 r-labelled
```

For the python environment, install
```bash
$ pip install scikit-learn keras numpy pandas matplotlib openpyxl
```
Run the ARIMA_LSTM.ipynb notebook to view the results.