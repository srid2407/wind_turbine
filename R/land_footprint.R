
#' Land Footprint (LF) of a Wind Turbine
#'
#' This function determines the Land Footprint of a wind turbine based on turbine configuration, rotor
#' diameter and rated capacity of the turbine
#' @param rd rotor diameter (m)
#' @param pwr rated capacity of the turbine (MW)
#' @param nt total number of turbines default = 25
#' @param cf capacity factory of wind turbine default = 0.2
#' @param y Lifetime of plant (year) default = 20
#' @return land footprint (m2/GWh)


land_footprint = function(rd, pwr, nt=25, cf=0.2, y=20)
{
  rd = ifelse(rd<0, stop("rotor diameter cannot be negative"), rd)
  pwr = ifelse(pwr<0, stop("rated power cannot be negative"), pwr)
  tpd = pwr/(nt*(rd^2))
  wfd = tpd * nt
  lf = 1000/(wfd*8760*y*cf)
  return(lf)
}
