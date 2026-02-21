#' SUIT Cerebellar Lobular Atlas
#'
#' Cerebellar parcellation into anatomical lobules and deep nuclei from
#' the SUIT atlas (Diedrichsen et al., 2009). Contains 2D polygon geometry
#' and 3D meshes.
#'
#' @family ggseg_atlases
#'
#' @references Diedrichsen J et al. (2009). A probabilistic MR atlas of the
#'   human cerebellum. \doi{10.1016/j.neuroimage.2009.01.045}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @import ggseg.formats
#' @export
#' @examples
#' suit()
suit <- function() .suit
