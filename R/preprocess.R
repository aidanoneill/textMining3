preprocess <-
function(data,
                       removewhitespace,
                       removepunctuation,
                       removestopwords,
                       tolowercase,
                       stemming)
{
  
  require("RTextTools")
  require("tm")
  
  data = tm_map(data, 
      content_transformer(function(x) iconv(x, to='UTF-8-MAC', sub='byte')), mc.cores=1)
  # Stops the tm package from trying to implement a multi-core method as this is computationally unnecessary and not supported by most machines
  
  funs = list()
  
  if(removewhitespace == TRUE)
    funs = c(funs, stripWhitespace)
    # Changes any excess whitespace (e.g. tabs, line breaks) to simple spaces
  if(removestopwords == TRUE)
    funs = c(funs, function(x) removeWords(x, stopwords("en")))
    # Removes stopwords - words of no significance (e.g. the, and)
  if(tolowercase == TRUE)
    funs = c(funs, content_transformer(tolower))
    # Converts all characters to lowercase
  if(stemming == TRUE)
    funs = c(funs, stemDocument)
    # Removes suffixes to find the root word (e.g. fishing, fisher -> fish)
  
  data.temp <- tm_map(data, tm_reduce, tmFuns=funs, lazy=TRUE) # Creates a temporary preprocessed version of the corpus so that punctuation may be removed, if required
  
  if(removepunctuation == TRUE)
    data.temp <- removePunctuation.corpus(data.temp)
    # Removes punctuation marks
  
  return(data.temp)
  
}
