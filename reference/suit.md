# SUIT Cerebellar Lobular Atlas

Cerebellar parcellation into anatomical lobules and deep nuclei from the
SUIT atlas (Diedrichsen et al., 2009). Contains 2D polygon geometry and
3D meshes.

## Usage

``` r
suit()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cerebellar).

## References

Diedrichsen J et al. (2009). A probabilistic MR atlas of the human
cerebellum.
[doi:10.1016/j.neuroimage.2009.01.045](https://doi.org/10.1016/j.neuroimage.2009.01.045)

## Examples

``` r
suit()
#> 
#> ── suit ggseg atlas ────────────────────────────────────────────────────────────
#> Type: cerebellar
#> Regions: 13
#> Hemispheres: left, right, vermis
#> Views: flatmap, nuclei
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 34 × 3
#>    hemi   region     label           
#>    <chr>  <chr>      <chr>           
#>  1 left   I_IV       left_I_IV       
#>  2 right  I_IV       right_I_IV      
#>  3 left   V          left_V          
#>  4 right  V          right_V         
#>  5 left   VI         left_VI         
#>  6 vermis VI         vermis_VI       
#>  7 right  VI         right_VI        
#>  8 left   CrusI      left_CrusI      
#>  9 vermis CrusI      vermis_CrusI    
#> 10 right  CrusI      right_CrusI     
#> 11 left   CrusII     left_CrusII     
#> 12 vermis CrusII     vermis_CrusII   
#> 13 right  CrusII     right_CrusII    
#> 14 left   VIIb       left_VIIb       
#> 15 vermis VIIb       vermis_VIIb     
#> 16 right  VIIb       right_VIIb      
#> 17 left   VIIIa      left_VIIIa      
#> 18 vermis VIIIa      vermis_VIIIa    
#> 19 right  VIIIa      right_VIIIa     
#> 20 left   VIIIb      left_VIIIb      
#> 21 vermis VIIIb      vermis_VIIIb    
#> 22 right  VIIIb      right_VIIIb     
#> 23 left   IX         left_IX         
#> 24 vermis IX         vermis_IX       
#> 25 right  IX         right_IX        
#> 26 left   X          left_X          
#> 27 vermis X          vermis_X        
#> 28 right  X          right_X         
#> 29 left   Dentate    left_Dentate    
#> 30 right  Dentate    right_Dentate   
#> 31 left   Interposed left_Interposed 
#> 32 right  Interposed right_Interposed
#> 33 left   Fastigial  left_Fastigial  
#> 34 right  Fastigial  right_Fastigial 
```
