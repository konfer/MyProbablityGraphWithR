library("gRbase")
graph <-ug("A:B:E + C:E:D")
class(graph)
library("Rgraphviz")
plot(graph)

