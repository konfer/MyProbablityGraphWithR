library("gRbase")

library(Rgraphviz)
library(bnlearn)
library(grid)
library(arulesViz)


graph <-ug("A:B:E + C:E:D")
class(graph)
plot(graph)

dag <-dag("A + B:A + C:B + D:B + E:C:D")
dag
plot(dag,method="graph")

set.seed(123)
V <- letters[1:10]
M <- 1:4
g1 <- randomGraph(V, M, 0.2)
plot(g1)
