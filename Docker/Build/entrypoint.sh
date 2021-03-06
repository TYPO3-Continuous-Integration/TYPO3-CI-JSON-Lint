#!/bin/sh -l

set -e

### Function Header ###########################################################
Header() {
  ##########
  # Prints #
  ##########
  echo "---------------------------------------------"
  echo "-- GitHub Actions TYPO3 JSON Linter ---"
  echo "---------------------------------------------"
  echo "TYPO3 JSON Linter source code can be found at:"
  echo " - https://github.com/TYPO3-Continuous-Integration/TYPO3-CI-JSON-Lint"
  echo "---------------------------------------------"
}

### Function Lint #############################################################
Lint() {
  ##########
  # Prints #
  ##########
  echo "---------------------------------------------"
  echo "-- Running lint... ---"
  echo "---------------------------------------------"
  find . ! -path '*.Build/*' ! -path '*Resources/Private/node_modules/*' -name '*.json' | xargs jsonlint -q
}

#### Function Footer ###########################################################
Footer() {
  ##########
  # Prints #
  ##########
  echo "----------------------------------------------"
  echo "----------------------------------------------"
  echo "The script has completed"
  echo "----------------------------------------------"
  echo "----------------------------------------------"
}

################################################################################
############################### MAIN ###########################################
################################################################################

##########
# Header #
##########
Header

##########
# Lint #
##########
Lint

##########
# Footer #
##########
Footer
