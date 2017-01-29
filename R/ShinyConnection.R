# install.packages('rsconnect')

rsconnect::setAccountInfo(name='fungyip',
                          token='6AE800DC1A86570F2EC8DBFAEA40BB02',
                          secret='c3Oy+o7TYdL3h6u8mNaxxKcTUigCLVnkagyyLqx0')

library(rsconnect)
rsconnect::deployApp("./CNYMark6")


