#'Calculate root/shoot ratio into new column
#'
#'@param x name of tibble 'complete_ecotox_data' (tibble, no default)
#'@param BELOWGROUND weight of BELOWGROUND biomass in grams (numeric, no default)
#'@param ABOVE_GROUND weight of the ABOVE_GROUND biomass in grams (numeric, no default)
#'@return ratio (numeric)
#'
#'@examples 
#'calc_root_shoot_ratio (BELOWGROUND/ABOVE_GROUND)
#'
calc_rootshoot_ratio <- function(BELOWGROUND/ABOVE_GROUND)
{ratio <- complete_ecotox_data %>% + mutate(ratio = 
                                                       (BELOWGROUND/ABOVE_GROUND))
return(ratio)}
