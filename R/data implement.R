sf1_n = read.csv("인타임_네이버.csv")
sf1_w = read.csv("인타임_왓챠.csv")

sf1_n_rate = as.numeric(unlist(sf1_n[4]))
sf1_w_rate = as.numeric(unlist(sf1_w[3]*2))


par(mfrow=c(2,1))
hist(sf1_n_rate)
hist(sf1_w_rate)

sf1_n_cum <- cumsum(unlist(hist(sf1_n_rate)))
plot(sf1_n_cum)
sf1_w_cum <- cumsum(unlist(hist(sf1_w_rate)))
plot(sf1_w_cum)
