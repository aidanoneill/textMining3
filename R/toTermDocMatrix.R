toTermDocMatrix <-
function(data, tokenize){
  
  if(tokenize == TRUE)
    return(TermDocumentMatrix(data, control = list(tokenize = NGramTokenizer)))
  return(TermDocumentMatrix(data))
  
}
