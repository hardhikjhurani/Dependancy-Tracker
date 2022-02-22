install.packages(c("igraph","readr","tidyr","RColorBrewer"))
library (readr)
urlfile1="https://raw.githubusercontent.com/Arizonagong/vCIES2020_Network-Analysis/master/igraph/primaryschool.csv"
urlfile2="https://raw.githubusercontent.com/Arizonagong/vCIES2020_Network-Analysis/master/igraph/metadata_primaryschool.csv"
D<-read_csv(url(urlfile1))
D_meta<-read_csv(url(urlfile2))

library(igraph)
network= graph_from_data_frame(d=D, vertices=D_meta, directed=T)

V(network)

E(network)

V(network)$Gender

# library(d3r)
# data_json <- d3_igraph(network)

# write(data_json, "data_json")
