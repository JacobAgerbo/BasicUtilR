% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_collectors_curves.R
\name{make_collectors_curves}
\alias{make_collectors_curves}
\title{BasicUtilR - Generate Collector's Curves Plot
The \code{make_collectors_curves} function generates a collector's curves plot based on the provided data.
It calculates rarefaction curves by collecting unique observations for a specific group.
The function takes the following parameters:}
\usage{
make_collectors_curves(data, interations = 5, threads = 2)
}
\arguments{
\item{data}{The dataset containing the observations}

\item{threads}{The number of parallel threads to use (default: 2)}

\item{iterations}{The number of iterations to perform for each group (default: 5)}
}
\value{
A collector's curves plot
}
\description{
\itemize{
\item \code{data}: The dataset containing the observations.
\item \code{iterations}: The number of iterations to perform for each group (default: 5).
\item \code{threads}: The number of parallel threads to use (default: 2).
}
}
\details{
The function utilizes the \code{tidyverse}, \code{reshape2}, \code{cowplot}, \code{doParallel}, and \code{future} packages.
It also defines a custom theme called \code{theme_ridges} for the plot.

Example usage:

\if{html}{\out{<div class="sourceCode R">}}\preformatted{# Create a sample data frame and group variable
set.seed(1234)
data <- matrix(rpois(1000, 5), nrow = 100)
colnames(data) <- paste0("Group", 1:ncol(data))
group_var <- rep(colnames(data), each = nrow(data))

# Generate plots for the sample data frame and group variable
generate_plots(data, group_var, iterations = 50)
}\if{html}{\out{</div>}}
}
