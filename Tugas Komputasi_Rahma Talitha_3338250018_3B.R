#VECTOR
#Vector Numeric
suhu_air <- c(19.7, 28.4, 36.5, 41.8, 16.9)
suhu_air

#Vector Integer
usia_pekerja <- c(27L, 24L, 32L, 30L, 25L)
usia_pekerja

#Vector Logical
absensi_kehadiran <- c(TRUE, TRUE, TRUE, FALSE, TRUE)
absensi_kehadiran

#Vector Character
Red_Velvet <- c("Irene", "Seulgi", "Wendy", "Joy", "Yeri")
Red_Velvet



#Matrix 4x4
m_genap <- matrix(seq(2, 32, by = 2), nrow = 4, ncol = 4, byrow = TRUE)
m_genap



#Array 4 Dimensi
a <- array(1:64, dim = c(4, 4, 2, 2))
a



#Data Frame 4 col (Character, Numeric, Logical, Logical)
df_cortis <- data.frame(
  Nama = c("Martin", "James", "Juhoon", "Seonghyeon", "Keonho"),
  Nilai = c(93, 96, 89, 87, 87),
  Hadir = c(TRUE, TRUE, TRUE, FALSE, FALSE),
  Lulus = c(TRUE, TRUE, TRUE, TRUE, TRUE)
)
df_cortis


#List 5 Komponen
v_row <- c(26, 29, 34, 28, 25)
v_col <- matrix(c(31, 24, 33, 27, 30), ncol = 1)
m_ganjil <- matrix(seq(1, 31, by = 2), 
                   nrow = 4, ncol = 4, byrow = TRUE)
df_itzy <- data.frame(
  Nama = c("Yeji", "Yuna", "Ryujin", "Chaeryeong", "Lia"),
  Nilai = c(94, 91, 90, 85, 86),
  Hadir = c(TRUE, FALSE, TRUE, FALSE, TRUE),
  Lulus = c(TRUE, TRUE, TRUE, TRUE, TRUE))

list_4k <- list (matrix <- matrix(17:32, nrow = 4, ncol = 4),
                array <- array(1:36, dim = c(3, 3, 2, 2)),
                df_txt <- data.frame(
                  Nama = c("Soobin", "Yeonjun", "Beomgyu", "Taehyun", "Hyukai"),
                  Nilai = c(90, 86, 85, 89, 88),
                  Hadir = c(TRUE, TRUE, FALSE, TRUE, FALSE),
                  Lulus = c(TRUE, TRUE, TRUE, TRUE, TRUE)),
                tb_txt <- c(189, 182, 180, 177, 183))
                
list <- list(v_row,
                v_col,
                m_ganjil,
                df_itzy,
                list_4k)
list