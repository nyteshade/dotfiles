#!/bin/sh
#
# Logging Functionality
#
# shellcheck disable=SC2039

################
# Functions
################

# Test Failure
log_error() {
  # Arguments: Printed
  local red='\033[0;31m'
  local none='\033[0m'
  echo "${red}* Failed:${none} $*"
}

log_test_begin() {
  echo "Testing ${FUNCNAME[1]}"
}

log_test_results() {
  # $1: Number of Test Failures >= 0

  # Log Success
  log_success() {
    local green='\033[0;32m'
    local none='\033[0m'
    echo "${green}* Passed:${none} $*"
  }

  # $1: Number of Test Failures
  local test_failures=$1
  local func_name=${FUNCNAME[1]}

  case $test_failures in
  0) log_success "$func_name tests" ;;
  *) log_error "$test_failures $func_name tests" ;;
  esac
}
