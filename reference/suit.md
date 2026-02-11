# SUIT Cerebellar Lobular Atlas

Cerebellar parcellation into anatomical lobules and deep nuclei from the
SUIT atlas (Diedrichsen et al., 2009). Contains 2D polygon geometry and
3D meshes.

## Usage

``` r
data(suit)
```

## Format

A
[ggseg.formats::ggseg_atlas](https://ggseg.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (subcortical).

## References

Diedrichsen J et al. (2009). A probabilistic MR atlas of the human
cerebellum.
[doi:10.1016/j.neuroimage.2009.01.045](https://doi.org/10.1016/j.neuroimage.2009.01.045)

## Examples

``` r
data(suit)
suit
#> 
#> ── suit ggseg atlas ────────────────────────────────────────────────────────────
#> Type: subcortical
#> Regions: 21
#> Hemispheres: left, right, NA
#> Views: axial_1, axial_2, coronal_1, sagittal, axial_3, coronal_2
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 34 × 3
#>    hemi  region        label           
#>    <chr> <chr>         <chr>           
#>  1 left  i iv          Left_I_IV       
#>  2 right i iv          Right_I_IV      
#>  3 left  v             Left_V          
#>  4 right v             Right_V         
#>  5 left  vi            Left_VI         
#>  6 NA    vermis vi     Vermis_VI       
#>  7 right vi            Right_VI        
#>  8 left  crusi         Left_CrusI      
#>  9 NA    vermis crusi  Vermis_CrusI    
#> 10 right crusi         Right_CrusI     
#> 11 left  crusii        Left_CrusII     
#> 12 NA    vermis crusii Vermis_CrusII   
#> 13 right crusii        Right_CrusII    
#> 14 left  viib          Left_VIIb       
#> 15 NA    vermis viib   Vermis_VIIb     
#> 16 right viib          Right_VIIb      
#> 17 left  viiia         Left_VIIIa      
#> 18 NA    vermis viiia  Vermis_VIIIa    
#> 19 right viiia         Right_VIIIa     
#> 20 left  viiib         Left_VIIIb      
#> 21 NA    vermis viiib  Vermis_VIIIb    
#> 22 right viiib         Right_VIIIb     
#> 23 left  ix            Left_IX         
#> 24 NA    vermis ix     Vermis_IX       
#> 25 right ix            Right_IX        
#> 26 left  x             Left_X          
#> 27 NA    vermis x      Vermis_X        
#> 28 right x             Right_X         
#> 29 left  dentate       Left_Dentate    
#> 30 right dentate       Right_Dentate   
#> 31 left  interposed    Left_Interposed 
#> 32 right interposed    Right_Interposed
#> 33 left  fastigial     Left_Fastigial  
#> 34 right fastigial     Right_Fastigial 
```
