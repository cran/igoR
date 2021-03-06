#' @title Intergovernmental Organizations (IGO) by year
#' @name igo_year_format3
#' @docType data
#' @description Data on IGOs from 1815-2014, at the IGO-year level.
#' Contains one record per IGO-year (with years listed at 5 year intervals
#' through 1965, and annually thereafter).

#' @source \href{https://correlatesofwar.org/data-sets/IGOs}{Intergovernmental Organizations (v3)},
#' The Correlates of War Project (IGO Data Stata Files)
#' @format data frame with 19335 rows. Relevant fields:
#' \itemize{
#'   \item{\strong{ioname}: }{Short abbreviation of the IGO name.}
#'   \item{\strong{orgname}: }{Full IGO name.}
#'   \item{\strong{year}: }{Calendar Year.}
#'   \item{\strong{afghanistan...zimbabwe}: }{status of that state in the IGO:
#'   \tabular{cc}{
#'     \strong{Category} \tab \strong{Numerical Value}\cr
#'     No Membership \tab 0 \cr
#'     Full Membership \tab 1 \cr
#'     Associate Membership \tab 2 \cr
#'     Observer \tab 3\cr
#'     Missing data \tab -9 \cr
#'     State Not System Member \tab -1 \cr
#'     }
#'   }
#'   \item{\strong{sdate}: }{start date (year) that the IGO started.}
#'   \item{\strong{deaddate}: }{dead date (year) that the IGO dead.}
#'   \item{\strong{longorgname}: }{a longer version of the IGOs name
#'   (including previous names)}
#'   \item{\strong{ionum}: }{IGO id number in v2.1 and v3.0 of the data.}
#'   \item{\strong{version}: }{COW version number.}
#'   }
#'
#' See \href{https://correlatesofwar.org/data-sets/IGOs}{\strong{Codebook Version 3 IGO Data}}
#' for full reference.
#' @seealso \code{\link{state_year_format3}}
#' @note Raw data used internally by \pkg{igoR}
#' @references
#' Pevehouse, Jon CW, Timothy Nordstrom, Roseanne W McManus, and Anne Spencer
#' Jamison. "Tracking Organizations in the World: The Correlates of War
#' IGO Version 3.0 Datasets." \emph{Journal of Peace Research} 57, no. 3
#' (May 2020): 492-503. \doi{10.1177/0022343319881175}.
NULL

#' @title Country membership to IGO by year
#' @name state_year_format3
#' @docType data
#' @description Data on IGOs from 1815-2014, at the country-year level.
#' Contains one record per country-year (with years listed at 5 year
#' intervals through 1965, and annually thereafter).
#' @source \href{https://correlatesofwar.org/data-sets/IGOs}{Intergovernmental Organizations (v3)},
#' The Correlates of War Project (IGO Data Stata Files)
#' @format data frame with 15557 rows. Relevant fields:
#' \itemize{
#'   \item{\strong{ccode}: }{COW country number,
#'   see \code{\link{states2016}}}.
#'   \item{\strong{year}: }{Calendar Year.}
#'   \item{\strong{state}: }{Abbreviated state name, identical to variable
#'   names in \code{\link{igo_year_format3}}}
#'   \item{\strong{aaaid...wassen}: }{IGO variables containing information on
#'   state membership status:
#'   \tabular{cc}{
#'     \strong{Category} \tab \strong{Numerical Value}\cr
#'     No Membership \tab 0 \cr
#'     Full Membership \tab 1 \cr
#'     Associate Membership \tab 2 \cr
#'     Observer \tab 3\cr
#'     Missing data \tab -9 \cr
#'     IGO Not In Existence \tab -1 \cr
#'     }
#'   }
#' }
#'
#' See \href{https://correlatesofwar.org/data-sets/IGOs}{\strong{Codebook Version 3 IGO Data}}
#' @seealso \code{\link{igo_year_format3}},
#' \code{\link{states2016}}. See also \code{\link[countrycode]{countrycode}} to
#' convert between different country code schemes.
#' @note Raw data used internally by \pkg{igoR}
#' @references
#' Pevehouse, Jon CW, Timothy Nordstrom, Roseanne W McManus, and Anne Spencer
#' Jamison. "Tracking Organizations in the World: The Correlates of War
#' IGO Version 3.0 Datasets." \emph{Journal of Peace Research} 57, no. 3
#' (May 2020): 492-503. \doi{10.1177/0022343319881175}.
NULL


#' @title State System Membership (v2016)
#' @name states2016
#' @docType data
#' @description The list of states with COW abbreviations and ID numbers, plus
#' the field \code{state} from \code{\link{state_year_format3}}.
#' @source \href{https://correlatesofwar.org/data-sets/state-system-membership}{
#' State System Membership (v2016)}, The Correlates of War Project.
#' @format data frame with 243 rows:
#' \itemize{
#'   \item{\strong{ccode}: }{COW country number.}
#'   \item{\strong{stateabb}: }{COW state abbreviation (3 characters).}
#'   \item{\strong{statenme}: }{COW state name.}
#'  \item{\strong{styear...endday}: }{Fields to identify the begining
#'   and the end of each tenure.}
#'   \item{\strong{version}: }{Data file version number.}
#'   \item{\strong{state}: }{Abbreviated state name as appear in
#'   \code{\link{state_year_format3}}.}
#'  }
#'
#' @seealso \code{\link{state_year_format3}}, \code{\link{igo_year_format3}}.
#' @details This data set contains the list of states in the international
#' system as updated and distributed by the Correlates of War Project.
#'
#' This data set contains the list of states in the international system as
#' updated and distributed by the Correlates of War Project.
#' These data sets identify states, their standard Correlates of War
#' "country code" or state number (used throughout the Correlates of War
#' project data sets), state abbreviations, and dates of membership as
#' states and major powers in the international system.
#'
#' The Correlates of War project includes a state in the international system
#' from 1816-2016 for the following criteria:
#' \itemize{
#' \item{\strong{Prior to 1920} }{the entity must have had a population greater than 500,000
#' and have had diplomatic missions at or above the rank of charge
#' d'affaires with Britain and France.}
#'
#' \item{\strong{After 1920} }{the entity must be a member of the League of Nations
#' or the United Nations, or have a population greater than 500,000 and
#' receive diplomatic missions from two major powers.
#' }
#' }
#' @note \code{state} variable added to original data to help comparison across
#' datasets on this package.
#'
#' @references
#' Correlates of War Project. 2017 "State System Membership List, v2016."
#' Online, \url{https://correlatesofwar.org/}.
NULL
