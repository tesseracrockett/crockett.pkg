#'Calculate root/shoot ratio into new column
#'
#'@param complete_exotox_data name of tibble 'complete_ecotox_data' (tibble, no default)
#'@param BELOWGROUND weight of BELOWGROUND biomass in grams (numeric, no default)
#'@param ABOVE_GROUND weight of the ABOVE_GROUND biomass in grams (numeric, no default)
#'@return ratio (numeric)
#'
#'@examples 
#'calc_root_shoot_ratio (BELOWGROUND/ABOVE_GROUND)
#'
calc_rootshoot_ratio <- function(data = complete_ecotox_data,BELOWGROUND = complete_ecotox_data$BELOWGROUND,
                                    ABOVE_GROUND = complete_ecotox_data$ABOVE_GROUND)
{rs_ratio <- data %>% mutate(rs_ratio = 
                                                    (complete_ecotox_data$BELOWGROUND
                                                    /complete_ecotox_data$ABOVE_GROUND))
return(rs_ratio)}



