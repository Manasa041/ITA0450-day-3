mpg <- read.csv("mpg.csv")
max_city_mpg <- which.max(mpg$cty)
mpg[max_city_mpg, "model"]

compact <- mpg[mpg$class %in% c("compact", "subcompact"), ]
min_disp_compact <- which.min(compact$displ[compact$class == "compact"])
min_disp_subcompact <- which.min(compact$displ[compact$class == "subcompact"])

compact[min_disp_compact, "model"]
compact[min_disp_subcompact, "model"]
