#'calculate volume of shrub
#'
#'@param length Length of the shrub (numeric, default 1)
#'@param width Width of the shrub (numeric, default 1)
#'@param height Height of the shrub (numeric, default 1)
#'@return Volume of the shrub (numeric)
#'
#'@examples
#'calc_shrub_vol(length = 2, width = 3, height = 2)


calc_shrub_vol <- function(length = 1, width = 1, height = 1){
       volume <- length*width*height
       return(volume)}

#'calculate estimated shrub mass
#'
#'@param volume (numeric)
#'@return Mass of the Shrub (numeric)
#'
#'@examples
#'calc_shrub_mass (3.5)
       
calc_shrub_mass <- function(volume){
        mass <- 2.65*volume^0.9
        return(mass)}

#'calcuate shrub density
#'
#'@param length (numeric, default 2)
#'@param width (numberic, default 4)
#'@param height (numeric, default 1)
#'@param mass (numeric)
#'@param dens (numeric)
#'@return dens (numeric)

calc_shrub_density <- function(width = 2, length = 4, height = 1){
        vol <- calc_shrub_vol(width, length, height)
        mass <- est_shrub_mass(vol)
        dens <- mass/vol
        return(dens)   }     