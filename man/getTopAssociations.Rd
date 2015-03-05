\name{getTopAssociations}
\alias{getTopAssociations}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
get top assoc
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
getTopAssociations(data, terms, number)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{terms}{
%%     ~~Describe \code{terms} here~~
}
  \item{number}{
%%     ~~Describe \code{number} here~~
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
function (data, terms, number) 
{
    assocs = findAssocs(data, terms = terms, corlimit = 0)
    top.assocs = vector("list", length(terms))
    names(top.assocs) = terms
    for (i in 1:length(terms)) {
        if (length(assocs[[i]]) >= number) 
            top.assocs[[i]] = assocs[[i]][1:number]
        else top.assocs[[i]] = assocs[[i]]
    }
    return(top.assocs)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
