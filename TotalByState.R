#Total Breweries by state
# Read in the breweries data
breweries <- read.csv("breweries.csv", header  = TRUE)
# compile the number by state using the aggregate function in R
breweries.by.State <- aggregate( rep(1,dim(breweries)[1]), by=list(breweries$State), sum)
# Update the column names to something more meaningful
colnames(breweries.by.State) <- c("State","Number")
# Sort by state from largest to smallest number of breweries
sortedBreweriesByState <- breweries.by.State[order(breweries.by.State$Number, decreasing = TRUE),]
# Display the Brewer's by States in descending order
sortedBreweriesByState
