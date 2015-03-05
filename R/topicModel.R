topicModel <-
function(data, k){
  require("topicmodels")
  
  len = length(data$dimnames$Docs)
  train = sample.int(len, len * 3/4)
  test = (1:len)[-train]
  
  lda = LDA(x = data, k = k, method = "VEM")
  
#  topics(lda) # which documents belong to which topic
  terms(lda, 10) # which terms are most related to each topic
  
}
