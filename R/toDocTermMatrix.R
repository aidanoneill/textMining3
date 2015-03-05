toDocTermMatrix <-
function(data, tokenize){
  
  if(tokenize == TRUE)
    return(DocumentTermMatrix(data, control = list(tokenize = NGramTokenizer)))
  return(DocumentTermMatrix(data))
  
}
