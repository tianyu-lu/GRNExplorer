#' Calculates IC values
#'
#' Calculates BIC and AIC, Bayesian and Akaike given log-likelihood
#'
#' @param loglikelihood Negative value of class numeric
#' @param clusters yes
#' @param dimension yes
#' @param nObservations yes
#'
#' @return List of BIC and AIC
#' \itemize{
#'    \item BIC
#'    \item AIC
#' }
#'
#' @export
#' @examples
#' resultsInfCriteria <- InfCriteriaV3(loglikelihood = -5080,
#'    clusters = 2,
#'    dimension = 3,
#'    nObservations = 1000)

InfCriteriaV3 <- function(loglikelihood,
                          clusters,
                          dimension,
                          nObservations = 100) {

  # calculate number of parameters based on Gaussian mixture
  kParameters <- ((dimension + 1) * dimension) / 2 + dimension + (clusters - 1)

  # calculate model selection criteria
  BIC <- - 2 * loglikelihood + (kParameters * log(nObservations))
  AIC <- - 2 * loglikelihood + (2 * kParameters)

  Results <- list(BICresults = BIC,
                  AICresults = AIC)

  class(Results) <- "InfCriteria"
  return(Results)
}
