#Total Breweries by state
breweries <- read.csv("breweries.csv", header  = TRUE)
aggregate( rep(1,dim(breweries)[1]), by=list(breweries$State), sum)
