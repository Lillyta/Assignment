# 1. Membuka Data Airquality
data(airquality)

#Menampilkan Struktur Data
str(airquality)


# 2. Membuat Histogram Variabel Wind beserta Density
#Estimasi kepadatan
dens <- density(airquality$Wind, na.rm = TRUE)

#Histogram + Density
hist(airquality$Wind,
     probability = TRUE,
     xlab = "Wind (mph)",
     main = "Histogram + Density Wind")

#Garis kepadatan
lines(dens, col = "pink", lwd = 2)


# 3. Membuat Boxplot dan Stem and Leaf
#Boxplot
boxplot(airquality$Wind,
        horiz = TRUE,
        main = "Boxplot Wind",
        xlab = "Wind (mph)")

#Stem and Leaf
stem(airquality$Wind)


# 4. Membuat Scatter Plot
plot(airquality$Wind, airquality$Ozone,
     xlab = "Wind (mph)",
     ylab = "Ozone (ppb)",
     main = "Scatter Plot Wind vs Ozone")