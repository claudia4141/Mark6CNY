---
Analytics:
  Bayesian Probability: Fengshui
Author: Fung YIP
Date: 30 Jan 2017
Title: Predict Chinese New Year Mark6 Hong Kong Lottery numbers
---


## Introduction
This repository is created to predict 2017 Chinese New Year Mark6 numbers (Hong Kong Lottery) with 1st Prize Fund of HK$8 millions <http://bet.hkjc.com/marksix/index.aspx?lang=en> using Bayesian probability with adjustment from fengshui master Mak ling ling 麥玲玲.


## Summary

&nbsp; 


The function gen_Mark6 is created to generate lottery numbers randomly with 3, 5, 9 are more favourable to appear advised by Feng Shui Master Mak Ling Ling.

####What is Mark6?
In each draw, 7 numbers will be drawn out of 49 numbers. The first 6 numbers are the Drawn Numbers and the 7th number is the Extra Number. In order to win 1st Prize, you need to pick all the 6 drawn numbers.


Feng Shui Master Mak Ling Ling
![Feng Shui Master Mak Ling Ling](./Pictures/Mak Ling Ling.JPG)

&nbsp; 


```{r Mark6 Lotto Numbers, echo=TRUE, eval=FALSE, message=FALSE, warning=FALSE}

gen_Mark6 <- function(){
  balls <- seq(1:49)
  probs<-balls
  probs[probs<=49]<-1/49
  
  #麥玲玲 http://campaign.hkjc.com/ch/mark6-snowball/2017-cny.aspx?b_cid=BW6HTHC_m6luckynos
  # 有利數字 3,5,9
  probs[probs=3]<-1/46
  probs[probs=5]<-1/46
  probs[probs=9]<-1/46
  
  w<-sample(balls,6, prob=probs)
  cat(" Your Lucky Mark 6 Numbers:",w[order(w)])
    # Make a good warning
  
}

```

