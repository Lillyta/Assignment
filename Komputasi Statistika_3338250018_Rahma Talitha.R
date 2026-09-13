# Memasukkan data iris
data(iris)


# 1) Menampilkan data Sepal.Length
iris[, "Sepal.Length"]


# 2) Menyebutkan tipe data tiap kolom
sapply(iris, class)


# 3) Membuat variabel baru "turunan"
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")


# 4) Ubah variabel turunan menjadi sepal
names(iris)[6] <- "sepal"


# 5) Ambil data dengan sepal bernilai besar dari species virginica
virginica_besar <- iris[iris$sepal == "Besar" & iris$Species == "virginica", ]
virginica_besar


# 6) Mengecek jumlah species dalam data
table(iris$Species)


# 7) Membagi data iris menjadi 3 data frame
setosa_df <- subset(iris, Species == "setosa")
versicolor_df <- subset(iris, Species == "versicolor")
virginica_df <- subset(iris, Species == "virginica")


# 8) Mengurutkan data frame species berdasarkan Sepal.Width
setosa_df <- setosa_df[order(setosa_df$Sepal.Width), ]
versicolor_df <- versicolor_df[order(versicolor_df$Sepal.Width), ]
virginica_df <- virginica_df[order(virginica_df$Sepal.Width), ]
setosa_df
versicolor_df
virginica_df