dnaseq <- "ATCGCGGCGGCTTAGGACCGATTAGA"
print(paste("this is the sample dna sequence", dnaseq))
a_count <-sum(strsplit(dnaseq, NULL)[[1]]=="A")
t_count <-sum(strsplit(dnaseq, NULL)[[1]]=="T")
g_count <-sum(strsplit(dnaseq, NULL)[[1]]=="G")
c_count <-sum(strsplit(dnaseq, NULL)[[1]]=="C")
a <-a_count/nchar(dnaseq)*100
t <-t_count/nchar(dnaseq)*100
g <-g_count/nchar(dnaseq)*100
c <-c_count/nchar(dnaseq)*100
print(paste("percentage of a_count,t_count,g_count and c_count", a, t, g, c))
