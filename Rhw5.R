
rm(list=ls(all=TRUE))
#改寫這段程式碼
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
this_year <- as.numeric(format(Sys.Date(), '%Y'))
birth_year <- this_year - straw_hat_df$age
birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
straw_hat_df$birth_date <- as.Date(birth_date_chr)
View(straw_hat_df)



rm(list=ls(all=TRUE))
#改寫結果
library(magrittr)
load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date<- as.numeric(format(Sys.Date(), '%Y'))%>%
  `-` (straw_hat_df$age) %>%
  paste(.,straw_hat_df$birthday, sep = "-") %>%
  as.Date()
View(straw_hat_df)

#計算 BMI 將 bmi 變數加入 data frame

heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights$BMI=heights_and_weights$weight/(heights_and_weights$heights/100)^2
View(heights_and_weights)

