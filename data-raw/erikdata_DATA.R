# ----------------------------------------
## ATUS

# D:\Dropbox\UNM\teach\Data\BLS_ATUS

load("./data-raw/atus_0321_Erhardt-202212.RData")

usethis::use_data(
    dat_atus
  , labels_dat_atus
  , overwrite = TRUE
  )

