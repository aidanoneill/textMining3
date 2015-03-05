getTopAssociations <-
function(data, terms, number){
  
  assocs = findAssocs(data, terms = terms, corlimit = 0)
  # Finds all associations amongst the passed terms
  
  top.assocs = vector("list", length(terms))
  names(top.assocs) = terms
  # Creates a list to store the top N associations
  
  for(i in 1:length(terms)){
    if(length(assocs[[i]]) >= number)
      top.assocs[[i]] = assocs[[i]][1:number]
    else
      top.assocs[[i]] = assocs[[i]]
  }
  
  return(top.assocs)
  
}
