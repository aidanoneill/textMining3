removePunctuation.corpus <-
function(data){
  for(i in 1:length(data)){
    docAsString = apply(as.matrix(data[[i]]$content), 1, FUN=as.String) # Converts the text content a corpus element to a string
    data[[i]]$content = apply(as.matrix(docAsString), 1, removePunctuation.string) # Passes each converted string element through the string punctuation removal function and reassigns to the passed corpus
  }
  return(data)
}
