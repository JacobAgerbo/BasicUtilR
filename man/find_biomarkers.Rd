% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_biomarkers.R
\name{find_biomarkers}
\alias{find_biomarkers}
\title{BasicUtilR - Biomarker detection using different classifiers}
\usage{
find_biomarkers(
  data,
  sample_data,
  exp_var,
  datatype = c("logcpm", "relabu", "counts"),
  method = c("GLM", "RF", "both"),
  top_biomarker = 0.1,
  prevalence_tolerance = NULL,
  threads = 2
)
}
\arguments{
\item{data}{A multivariate matrix, like an abundance table}

\item{sample_data}{The classification level used for feature}

\item{exp_var}{A binary variable for classification from sample_data}

\item{datatype}{Select datatype, like relative abundance (relabu), counts, or log-transformed counts per million (logcpm)}

\item{method}{Choose between Generalized Linear Models (GLMs), Random Forrest (RF), or both}

\item{top_biomarker}{percentage to filter most important biomarker in plot}

\item{prevalence_tolerance}{tolerance for be counted as present in sample, when doing prevalence testing (default is 1/number of samples)}

\item{random_var}{Random variable, which should be taken into account for correlation, eg. 'Location' or 'batch effect'.}
}
\value{
A ggplot object for pdf saving, and a table with statistics, and a plot of the trained model
}
\description{
BasicUtilR - Biomarker detection using different classifiers
}
\examples{
make_test_data <- source("https://raw.githubusercontent.com/JacobAgerbo/Basic_Utils/main/Visualization/make_test_data.R")[["value"]]
test_data <-make_test_data(10)

p <- find_biomarkers(data = test_data$data,
                          sample_data = test_data$sample_data,
                          exp_var = "O_Group",
                          datatype = "counts",
                          method = "GLM",
                          top_biomarker=0.1,
                          prevalence_tolerance=NULL, threads = 4)
p
}
