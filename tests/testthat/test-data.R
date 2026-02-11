describe("suit atlas", {
  it("is a valid subcortical ggseg_atlas", {
    expect_s3_class(suit, "ggseg_atlas")
    expect_s3_class(suit, "subcortical_atlas")
    expect_true(ggseg.formats::is_ggseg_atlas(suit))
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg3d")
    p <- ggseg3d::ggseg3d(atlas = suit)
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
