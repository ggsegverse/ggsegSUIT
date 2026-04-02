devtools::load_all(here::here("..", "..", "ggseg.extra"))
library(ggseg.formats)

tsv <- read.delim(
  here::here("data-raw", "atl-Anatom.tsv"),
  stringsAsFactors = FALSE
)

input_lut <- data.frame(
  idx = tsv$index,
  label = tsv$name,
  R = col2rgb(tsv$color)["red", ],
  G = col2rgb(tsv$color)["green", ],
  B = col2rgb(tsv$color)["blue", ],
  stringsAsFactors = FALSE
)

cli::cli_h1("Creating SUIT cerebellar atlas")

volume_file <- here::here("data-raw", "atl-Anatom_space-MNI_dseg.nii")

if (!file.exists(volume_file)) {
  cli::cli_abort("Volume not found: {.path {volume_file}}")
}

.suit <- create_cerebellar_from_volume(
  volume = volume_file,
  input_lut = input_lut,
  atlas_name = "suit",
  output_dir = "data-raw/suit",
  skip_existing = FALSE,
  cleanup = FALSE,
  verbose = TRUE
)

cli::cli_alert_success("Atlas created with {nrow(.suit$core)} regions")
print(.suit)

save(.suit, file = here::here("R/sysdata.rda"), compress = "xz")
cli::cli_alert_success("Saved to R/sysdata.rda")
