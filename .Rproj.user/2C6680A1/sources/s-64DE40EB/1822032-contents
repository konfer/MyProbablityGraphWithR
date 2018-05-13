library("gRbase")
library("gRain")

machine_val <- c("workong","boken")
light_bulb_val <- c("good","bad")
machine_prob <- c(99,1)
light_bulb_prob <- c(99,1,60,40)

M <-cptable(~machine, values = machine_prob, levels = machine_val)
L <- cptable(~light_bulb |machine, values = light_bulb_prob, levels = light_bulb_val)

plist <-compileCPT(list(M, L))
plist

plist$machine
plist$light_bulb


net <- grain(plist)
net2 <- setEvidence(net, evidence =list(light_bulb ="bad"))
querygrain(net2, nodes =c("machine"))

net2
net
