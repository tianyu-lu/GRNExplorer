############################### Practical 4 - BCB410
# Date: 7 October 2020
# Author: Anjali Silva <a.silva@alum.utoronto.ca>



############################### R Package Structure
# slide 15
# install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
library(devtools)
library(roxygen2)
library(testthat)
library(knitr)
library(usethis)

# You can check that you have everything installed and working by
# running the following code:
devtools::has_devel()
#> [1] TRUE

getwd()
setwd("~/Desktop")
getwd()


# slide 21
# We'll create a package called TestingPackage1
# TestingPackage1 because TestingPackage already exists for me.


# “File” → “New Project... (Don't save)” → “New Directory” → “R Package” (check
# create git repository, open in new session). Add sample R code
# (e.g., InfCriteriaCalculation.R) with roxygen2 tags.


# You should see TestingPackage.Rproj under Files tab.

# Alternative usethis::create_package("TestingPackage")


############################### DESCRIPTION
# slide 25
# Click on DESCRIPTION from right hand side
# Explained at https://r-pkgs.org/description.html#description
# Fill it in
# Title: Calculates Information Criteria Values
# Authors@R: person("A", "Silva", email = "asilva@rstudio.com", role = c("aut", "cre"))
# Maintainer: A Silva <asilva@rstudio.com>
# Description: Calculates information criteria values, specifically of AIC, BIC and ICL.

# slide 26
# To change license info:
# Explained at https://r-pkgs.org/description.html#description

# https://cran.r-project.org/web/packages/usethis/index.html
install.packages("usethis")
library("usethis")


?usethis::use_mit_license # Name of the copyright holder must be given
usethis::use_mit_license("T Lu")
# use_gpl3_license()
# use_cc0_license()

# Under File pane, now should see LICENSE and LICENSE.md
# DESCRIPTION License: MIT + file LICENSE


# slide 29
# To add Imports
usethis::use_package("grndata", type = "Imports")

# If you require a specific version (TRUE = current version loaded)
# use_package("mclust", type = "Imports", min_version = TRUE)
# Should see DESCRIPTION updated

# usethis::use_package("dplyr", "Suggests")
# Suggests: your package can use these packages, but doesn’t require them.

# If want to use roxygen with markdown
usethis::use_roxygen_md()
# Setting RoxygenNote field in DESCRIPTION to '6.1.1'

# After License, manually add to DESCRIPTION
Depends: R (>= 3.1.0)


# slide 30
# Create README file
usethis::use_readme_rmd()
# Should see 'README.rmd' under Files
devtools::build_readme()


############################### NAMESPACE
# slide 32
# Delete the NAMESPACE file (you will use roxygen2 to auto-generate this file)
# Click "Build" -> "Configure Build Tools…" -> "Build Tools" Tab
# Check "Generate documentation with Roxygen" -> Select All Options
# Click Ok

devtools::load_all()
devtools::document()
# This will create new NAMESPACE (under Files).
# This will also create manual files (*.Rd) in man subfolder (under Files).



# Always recommend to run Check, this way errors don't accumulate.
# Build Tab -> Check Package
# or
devtools::check()





############################### R subdirectory
# slide 52
usethis::use_r("RscriptName") # Replace RscriptName with name of script

devtools::load_all() # Once the function is written, run


# Always recommend to run Check, this way errors don't accumulate.
# Build Tab -> Check Package
# or
devtools::check()

# Be sure to save all changes before closing package.

############################### Check your work
# slide 54
# To open again:
# Open *.Rproj
# Build Tab -> "Install and Restart"
# This step should go with no errors. Otherwise, use
# error messages to guide you.
library(devtools)
library(roxygen2)
library(testthat)
library(knitr)
library(usethis)


# [END]
