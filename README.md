Posterior Means Convergence diagnostics plot:

This script measures the convergence of posterior means of an input vector or matrix containing observations for n iterations and m variables. In case variable size m = 1, the input data can be passed on as an Array{Float64,1} or Array{Float64,2}. 

It measures the moving vector average for each observation by normalising the average of the observations uptill k iterations by the sum of k observations.

  
