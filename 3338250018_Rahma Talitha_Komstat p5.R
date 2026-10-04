# 1. Rata-rata waktu tunggu mu = 5 menit. Berapa peluang P(X > 5)? (Eksponensial)
mu <- 5
lambda <- 1 / mu

p1 <- pexp(5, rate = lambda, lower.tail = FALSE)
p1


# 2. Kereta komuter tiba di stasiun secara acak antara pukul 07.00 hingga 07.20 (interval 20 menit). Berapakah ragam (varians) waktu tunggu penumpang? (Uniform)
a <- 0
b <- 20

varians <- (b - a)^2 / 12
varians


# 3. Masa pakai sensor suhu memiliki rata-rata mu = 10 tahun. Berapa peluang sensor tersebut rusak sebelum mencapai usia 5 tahun? (Eksponensial)
mu <- 10
lambda <- 1 / mu

p3 <- pexp(5, rate = lambda)
p3


# 4. Berat bersih kemasan kopi menyebar normal dengan mu = 250 gram dan sigma = 5 gram. Kemasan dianggap underweight jika beratnya kurang dari 240 gram. Berapa proporsi produk yang tergolong underweight? (Normal)
mu <- 250
sigma <- 5

z <- (240 - mu) / sigma
z

p4 <- pnorm(z)
p4