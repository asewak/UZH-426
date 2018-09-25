# UZH - STA426
## Statistical Analysis of High- Throughput Genomic and Transcriptomic Data

![My favourite mountain this year](https://github.com/asewak/UZH-426/blob/master/Pictures/IMG_6400.JPG)

The third class alpine route can be obtained [here](https://www.summitpost.org/northeast-ridge/162778).

That is a little bit of fun. If we want to get back to the statistics, here is the comparison of test error by number of trees for GBMs vs Random Forests ([source](https://web.stanford.edu/~hastie/Papers/ESLII.pdf)). Clearly there is a more superior model...

![GBM vs RF](https://github.com/asewak/UZH-426/blob/master/Pictures/dr-trevor-hastie-data-science-of-gbm-october-10-2013-presented-with-h2o-40-638.jpg)

Below you can find a template for a basic GBM in R:

```{r}
gbm(
 formula = Response ~ .,
 distribution = "gaussian",
 data = train,
 n.trees = 1000,
 interaction.depth = 1,
 shrinkage = 0.01,
 cv.folds = 5,
 n.cores = NULL, # will use all cores by default
 verbose = FALSE
 )  
```
