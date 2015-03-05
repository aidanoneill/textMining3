\name{createCorpus.csv}
\alias{createCorpus.csv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
create corpus for csv
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
createCorpus.csv(file, header, variables)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
%%     ~~Describe \code{file} here~~
}
  \item{header}{
%%     ~~Describe \code{header} here~~
}
  \item{variables}{
%%     ~~Describe \code{variables} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (file, header, variables) 
{
    require(tm)
    require("tm")
    require("qdap")
    require("NLP")
    require("wordcloud")
    require("topicmodels")
    data <- read.csv(file, header = header, stringsAsFactors = FALSE)
    data.frameSource <- DataframeSource(data[variables])
    data.corpus = VCorpus(data.frameSource, readerControl = list(language = "en"))
    return(data.corpus)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
