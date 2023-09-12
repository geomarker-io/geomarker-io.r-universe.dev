library(dplyr)

df <- tibble::tibble(
  package = c("addPmData", "addNarrData",
              "schwartzGeohashPM", "addNarrData", "OfflineGeocodeR",
              "s3", "zctaDB", "addNlcdData",
              "airPb", "ecat", "aiR",
              "tidydlnm", "hamilton", 
             "parcel", "cincy", "codec"))

df  <- df %>%
  mutate(url = glue::glue("https://github.com/geomarker-io/{package}"))

jsonlite::write_json(df, 'packages.json', pretty = TRUE)
