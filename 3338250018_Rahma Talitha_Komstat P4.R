# Tugas Sebaran Diskrit

# 1. Jika rata-rata pelanggan datang ke toko adalah 3 orang per jam, 
# modelkan dengan Poisson dan hitung P(X≥5).

# Model Poisson
lambda <- 3
x <- 0:5
pmf <- dpois(x, lambda)

plot(x, pmf,
     type = "h",
     lwd = 3,
     main = "Poisson(λ = 3)",
     xlab = "k",
     ylab = "P(X = k)")
plot

# Hitung P(X >= 5)
Hitung_P <- 1 - ppois(4, lambda)
Hitung_P



# 2. Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian. 
# Modelkan jumlah bola merah yang diambil dengan distribusi yang tepat.

# Distribusi yang tepat adalah Hypergeometric.
# Parameter
N <- 100    # ukuran populasi bola
K <- 20     # jumlah bola merah
n <- 10     # ukuran sampel

# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

# PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)

# Dataframe
data.frame(k = k, P = pmf)



# 3. Simulasikan 1.000 percobaan Binomial (n=15, p=0.4) 
# dan bandingkan histogram hasil simulasi dengan PMF teoretis.

# Parameter 
n <- 15
p <- 0.4

# Simulasi 1.000 percobaan
simulasi <- rbinom(1000, size = n, prob = p)

# PMF teoritis
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)

# CDF teoritis
cdf <- pbinom(x, size = n, prob = p)

# Histogram hasil simulasi
hist(simulasi,
     breaks = seq(-0.5, 15.5, by = 1),
     probability = TRUE,
     main = "Simulasi Binomial",
     xlab = "k",
     ylab = "Probabilitas")

# PMF teoritis
points(x, pmf, pch = 16)
lines(x, pmf, type = "h", lwd = 2)