#'Calculate root/shoot ratio into new column
#'
#'@param ecotox name of tibble 'ecotox' (tibble, no default)
#'@param BELOWGROUND weight of BELOWGROUND biomass in grams (numeric, no default)
#'@param ABOVE_GROUND weight of the ABOVE_GROUND biomass in grams (numeric, no default)
#'@return rs_ratio (numeric)
#'@importFrom dplyr mutate
#'@importFrom magrittr "%>%"
#'@export
#'
#'@examples 
#'calc_rootshoot_ratio (BELOWGROUND/ABOVE_GROUND)
#'
calc_rootshoot_ratio <- function(data = ecotox,BELOWGROUND = ecotox$BELOWGROUND,
                                 ABOVE_GROUND = ecotox$ABOVE_GROUND)
{rs_ratio <- data %>% mutate(rs_ratio = 
                               (ecotox$BELOWGROUND
                                /ecotox$ABOVE_GROUND))
return(rs_ratio)}