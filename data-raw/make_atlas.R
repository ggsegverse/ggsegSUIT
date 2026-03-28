library(ggseg.extra)
library(ggseg.formats)


tsv <- read.delim(
  here::here("data-raw", "atl-Anatom.tsv"),
  stringsAsFactors = FALSE
)

rgb_vals <- col2rgb(tsv$color)

lut_file <- here::here("data-raw", "SUIT_LUT.txt")
writeLines(
  sprintf("%d %s %d %d %d 0",
    tsv$index, tsv$name,
    rgb_vals["red", ], rgb_vals["green", ], rgb_vals["blue", ]
  ),
  lut_file
)

cli::cli_h1("Creating SUIT cerebellar atlas")

volume_file <- here::here("data-raw", "atl-Anatom_space-MNI_dseg.nii")

if (!file.exists(volume_file)) {
  cli::cli_abort("Volume not found: {.path {volume_file}}")
}

atlas_raw <- create_subcortical_from_volume(
  input_volume = volume_file,
  input_lut = lut_file,
  atlas_name = "suit",
  output_dir = "data-raw/suit",
  tolerance = 1,
  smoothness = 2,
  decimate = 0.5,
  skip_existing = TRUE,
  cleanup = FALSE,
  verbose = TRUE
)

atlas_raw <- atlas_raw |>
  atlas_view_gather()

suit <- atlas_raw

cli::cli_alert_success("Atlas created with {nrow(suit$core)} regions")
print(suit)

brain_pals <- stats::setNames(
  list(suit$palette),
  suit$atlas
)
save(brain_pals, file = here::here("R/sysdata.rda"), compress = "xz")

usethis::use_data(suit, overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved to data/suit.rda")
