\name{preprocess}
\alias{preprocess}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
preprocess
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
preprocess(data, removewhitespace, removepunctuation, removestopwords, tolowercase, stemming)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{removewhitespace}{
%%     ~~Describe \code{remove.whitespace} here~~
}
  \item{removepunctuation}{
%%     ~~Describe \code{remove.punctuation} here~~
}
  \item{removestopwords}{
%%     ~~Describe \code{remove.stopwords} here~~
}
  \item{tolowercase}{
%%     ~~Describe \code{to.lowercase} here~~
}
  \item{stemming}{
%%     ~~Describe \code{stemming} here~~
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
function (data, removewhitespace, removepunctuation, removestopwords, 
    tolowercase, stemming) 
{
    require("RTextTools")
    require("tm")
    funs = list()
    if (removewhitespace == TRUE) 
        funs = c(funs, stripWhitespace)
    if (removestopwords == TRUE) 
        funs = c(funs, function(x) removeWords(x, stopwords("en")))
    if (tolowercase == TRUE) 
        funs = c(funs, content_transformer(tolower))
    if (stemming == TRUE) 
        funs = c(funs, stemDocument)
    data.temp <- tm_map(data, tm_reduce, tmFuns = funs, lazy = TRUE)
    if (removepunctuation == TRUE) 
        data.temp <- removePunctuation.corpus(data.temp)
    return(data.temp)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
