# install.packages("datatable")

require(data.table)
require(ggplot2)

anno = fread("/Users/ainesh/Documents/GitHub Repositories/material/week02-24sep2018/exercise/SampleAnnotation.txt")
x = fread("/Users/ainesh/Documents/GitHub Repositories/material/week02-24sep2018/exercise/expressionData.txt")

samples = rownames(anno)
colors = rainbow(nrow(anno))
isNorm = anno$TissueType == "norm"
isSick = anno$TissueType == "sick"
isAcute = anno$TissueType == "acute"

y = melt(x)
y$log_value = log(y$value)

# boxplot
ge = log(x[,2:ncol(x)])
boxplot(as.list(ge))

# density
ggplot(y, aes(x = log_value, fill = variable)) + geom_density(alpha = 0.1)



