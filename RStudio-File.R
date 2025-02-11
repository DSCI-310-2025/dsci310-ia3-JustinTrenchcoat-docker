renv::init()
renv::install("cowsay@0.8.0")
library(cowsay)
say("hello world", by = "cow")