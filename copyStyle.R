
practicals <- list.dirs(here::here("Practicals"), recursive = FALSE, full.names = TRUE)

# copy the style
stylePath <- here::here("styleSS25.scss")
for (practical in practicals) {
  stylePractical <- file.path(practical, "styleSS25.scss")
  file.copy(from = stylePath, to = stylePractical)
}

# copy logo
logoPath <- here::here("images", "hds_logo.svg")
for (practical in practicals) {
  logoPractical <- file.path(practical, "hds_logo.svg")
  file.copy(from = logoPath, to = logoPractical)
}

