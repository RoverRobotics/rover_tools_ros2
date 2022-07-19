# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_bno055_driver_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED bno055_driver_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(bno055_driver_FOUND FALSE)
  elseif(NOT bno055_driver_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(bno055_driver_FOUND FALSE)
  endif()
  return()
endif()
set(_bno055_driver_CONFIG_INCLUDED TRUE)

# output package information
if(NOT bno055_driver_FIND_QUIETLY)
  message(STATUS "Found bno055_driver: 1.0.0 (${bno055_driver_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'bno055_driver' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${bno055_driver_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(bno055_driver_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${bno055_driver_DIR}/${_extra}")
endforeach()
