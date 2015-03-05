createCorpus <-
function(data, variables){
  require(tm)
  require("tm")
  require("qdap")
  require("NLP")
  require("wordcloud")
  require("topicmodels")
  
  data.frameSource <- DataframeSource(data[variables])
  
  data.corpus = VCorpus(data.frameSource, readerControl = list(language="en"))
  
  return(data.corpus)
  
}
