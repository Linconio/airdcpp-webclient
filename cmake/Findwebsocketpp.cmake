# - Try to find websocketpp
# Once done this will define
#  Websocketpp_FOUND - System has websocketpp
#  Websocketpp_INCLUDE_DIRS - The websocketpp include directories

find_package(PkgConfig QUIET)

if (PKG_CONFIG_FOUND)
    pkg_check_modules(PC_WEBSOCKETPP QUIET websocketpp)
endif (PKG_CONFIG_FOUND)

find_path(websocketpp_INCLUDE_DIR websocketpp
          HINTS ${PC_WEBSOCKETPP_INCLUDEDIR} ${PC_WEBSOCKETPP_INCLUDE_DIRS})

set(websocketpp_INCLUDE_DIRS ${websocketpp_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set Websocketpp_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(websocketpp DEFAULT_MSG
                                  websocketpp_INCLUDE_DIR
                                  websocketpp_INCLUDE_DIRS)

mark_as_advanced(websocketpp_INCLUDE_DIR)

