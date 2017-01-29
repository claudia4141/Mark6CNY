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
  cat(" 新春金多寶六合彩 Mark 6 Number:",w[order(w)])
    # Make a good warning
  cat("\n祝大家恭喜發財,新春快樂,財源滾滾來滾滾來")
}

gen_Mark6()

