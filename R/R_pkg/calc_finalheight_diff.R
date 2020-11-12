#'Calculate final plant height into new column
#'
#'@param complete_exotox_data name of tibble 'complete_ecotox_data' (tibble, no default)
#'@param HEIGHT_F final height of plant in cm (numeric, no default)
#'@param HEIGHT_I initial height of plant in cm (numeric, no default)
#'@return difference (numeric)
#'
#'@examples 
#'calc_finalheight_diff (HEIGHT_F-HEIGHT_I)
#'
calc_finalheight_diff <- function(data = complete_ecotox_data,
                                  HEIGHT_F = complete_ecotox_data$HEIGHT_F,
                                  HEIGHT_I = complete_ecotox_data$HEIGHT_I)
{fh_diff <- data %>% mutate(fh_diff = 
                              (complete_ecotox_data$HEIGHT_F
                               -complete_ecotox_data$HEIGHT_I))
return(fh_diff)}