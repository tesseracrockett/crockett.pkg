calc_shrub_vol <- function(length = 1, width = 1, height = 1){
       volume <- length*width*height
       return(volume)
       
est_shrub_mass <- function(volume){
        mass <- 2.65*volume^0.9
        return(mass)

shrub_density <- function(width = 2, length = 4, height = 1){
        vol <- calc_shrub_vol(width, length, height)
        mass <- est_shrub_mass(vol)
        dens <- mass/vol
        resturn(dens)        