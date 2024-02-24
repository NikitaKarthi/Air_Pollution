#! /bin/bash  
  
jupyter nbconvert --to script ARIMA_library_read_csv.ipynb
jupyter nbconvert --to script ARIMA_to_xts.ipynb
jupyter nbconvert --to script ARIMA_missing_values.ipynb
jupyter nbconvert --to script ARIMA_smoothen.ipynb
jupyter nbconvert --to script ARIMA_xts_to_ts.ipynb
jupyter nbconvert --to script ARIMA_Value_acf_plot.ipynb
jupyter nbconvert --to script ARIMA_make_stationary.ipynb