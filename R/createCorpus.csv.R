createCorpus.csv <-
function(file, header, variables){
  require(tm)
  require("tm")
  require("qdap")
  require("NLP")
  require("wordcloud")
  require("topicmodels")
  
  data <- read.csv(file, header = header, stringsAsFactors=FALSE)
  data.frameSource <- DataframeSource(data[variables])
  data.corpus = VCorpus(data.frameSource, readerControl = list(language="en"))
  return(data.corpus)
  
}
