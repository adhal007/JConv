#Julia script for var[mean, sd] vs iterations
#Boostrapping convergence
Pkg.add("Distributions")
using Distributions
w = Normal(30,1)
function make_sample(n=100)
	sample = rand(w, n)
	return sample
end

function sample_stat(sample)
	return mean(sample)
end

function compute_sampling_distributions(n=100, iters=1000)
	stats = []
	for iters = 1:1000
		stats_append = [sample_stat(make_sample(n))]
		push!(stats, stats_append)

		#store the stats in an array for each iteration
	end
	println(stats)
	return stats
end

#Plot stats vs iters
using PyPlot
function convergence_plot(stats)
	iters = collect(1:1000)
	plot(stats, iters, color="red", linewidth="-")
	title("convergence of stats vs iters")
end
