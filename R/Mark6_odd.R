#There are 13,983,816 (~fourtheen million) combinations to choose 6 items out of a set of 49
choose(49,6)
#頭獎80millions
80000000 / (choose(49,6))

#Pay
pay <- choose(49,6)*10

TopPrize <- 80000000

Profit <- TopPrize - pay


80000000 / ((choose(49,6))*10)
