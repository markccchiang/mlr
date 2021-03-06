% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/friedmanPostHocTestBMR.R
\name{friedmanPostHocTestBMR}
\alias{friedmanPostHocTestBMR}
\title{Perform a posthoc Friedman-Nemenyi test.}
\usage{
friedmanPostHocTestBMR(bmr, measure = NULL, p.value = 0.05,
  aggregation = "default")
}
\arguments{
\item{bmr}{[\code{\link{BenchmarkResult}}]\cr
Benchmark result.}

\item{measure}{[\code{\link{Measure}}]\cr
Performance measure.
Default is the first measure used in the benchmark experiment.}

\item{p.value}{[\code{numeric(1)}]\cr
p-value for the tests. Default: 0.05}

\item{aggregation}{[\code{character(1)}] \cr
\dQuote{mean} or \dQuote{default}. See \code{\link{getBMRAggrPerformances}}
for details on \dQuote{default}.}
}
\value{
[\code{pairwise.htest}]: See \code{\link[PMCMR]{posthoc.friedman.nemenyi.test}} for details.
Additionally two components are added to the list:
\describe{
  \item{f.rejnull [\code{logical(1)}]}{Whether the according friedman.test rejects the Null hypothesis at the selected p.value}
  \item{crit.difference [\code{list(2)}]}{Minimal difference the mean ranks of two learners need to have in order to be significantly different}
}
}
\description{
Performs a \code{\link[PMCMR]{posthoc.friedman.nemenyi.test}} for a
\code{\link{BenchmarkResult}} and a selected measure.
This means \emph{all pairwise comparisons} of \code{learners} are performed.
The null hypothesis of the post hoc test is that each pair of learners is equal.
If the null hypothesis of the included ad hoc \code{\link[stats]{friedman.test}}
can be rejected an object of class \code{pairwise.htest} is returned. If not, the function returns the
corresponding \link[stats]{friedman.test}.
Note that benchmark results for at least two learners on at least two tasks
are required.
}
\examples{
# see benchmark
}
\seealso{
Other benchmark: \code{\link{BenchmarkResult}},
  \code{\link{benchmark}},
  \code{\link{convertBMRToRankMatrix}},
  \code{\link{friedmanTestBMR}},
  \code{\link{generateCritDifferencesData}},
  \code{\link{getBMRAggrPerformances}},
  \code{\link{getBMRFeatSelResults}},
  \code{\link{getBMRFilteredFeatures}},
  \code{\link{getBMRLearnerIds}},
  \code{\link{getBMRLearnerShortNames}},
  \code{\link{getBMRLearners}},
  \code{\link{getBMRMeasureIds}},
  \code{\link{getBMRMeasures}}, \code{\link{getBMRModels}},
  \code{\link{getBMRPerformances}},
  \code{\link{getBMRPredictions}},
  \code{\link{getBMRTaskIds}},
  \code{\link{getBMRTuneResults}},
  \code{\link{plotBMRBoxplots}},
  \code{\link{plotBMRRanksAsBarChart}},
  \code{\link{plotBMRSummary}},
  \code{\link{plotCritDifferences}}
}

