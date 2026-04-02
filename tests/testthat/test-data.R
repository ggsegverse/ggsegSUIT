describe("suit atlas", {
  it("is a valid cerebellar ggseg_atlas", {
    expect_s3_class(suit(), "ggseg_atlas")
    expect_s3_class(suit(), "cerebellar_atlas")
    expect_true(ggseg.formats::is_ggseg_atlas(suit()))
  })

  it("has proper anatomical labels", {
    d <- as.data.frame(suit())
    labels <- unique(d$label)
    expect_true(any(grepl("left_", labels)))
    expect_true(any(grepl("right_", labels)))
    expect_true(any(grepl("vermis_", labels)))
  })

  it("renders 2D plot", {
    skip_if_not_installed("ggseg")
    skip_if_not_installed("ggplot2")
    skip_if_not_installed("vdiffr")
    p <- plot(suit()) + ggplot2::theme_void()
    vdiffr::expect_doppelganger("suit-2d", p)
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg3d")
    p <- ggseg3d::ggseg3d(atlas = suit())
    expect_s3_class(p, "htmlwidget")
  })
})
