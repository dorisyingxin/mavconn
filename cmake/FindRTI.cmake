INCLUDE(FindPackageHandleStandardArgs)
INCLUDE(HandleLibraryTypes)

SET(RTI_IncludeSearchPaths
  /opt/RTI/ndds.4.5d/include
)

SET(RTI_LibrarySearchPaths
  /opt/RTI/ndds.4.5d/lib/i86Linux2.6gcc4.1.1
  /opt/RTI/ndds.4.5d/lib/x64Linux2.6gcc4.1.1
)

FIND_PATH(RTI_INCLUDE_DIR
  NAMES ndds/ndds_cpp.h
  PATHS ${RTI_IncludeSearchPaths}
)
FIND_LIBRARY(RTI_C_LIBRARY_OPTIMIZED
  NAMES nddscz
  PATHS ${RTI_LibrarySearchPaths}
)
FIND_LIBRARY(RTI_CPP_LIBRARY_OPTIMIZED
  NAMES nddscppz
  PATHS ${RTI_LibrarySearchPaths}
)
FIND_LIBRARY(RTI_CORE_LIBRARY_OPTIMIZED
  NAMES nddscorez
  PATHS ${RTI_LibrarySearchPaths}
)

# Handle the REQUIRED argument and set the <UPPERCASED_NAME>_FOUND variable
# The package is found if all variables listed are TRUE
FIND_PACKAGE_HANDLE_STANDARD_ARGS(RTI "Could NOT find RTI DDS C library"
  RTI_C_LIBRARY_OPTIMIZED
  RTI_INCLUDE_DIR
)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(RTI "Could NOT find RTI DDS CPP library"
  RTI_CPP_LIBRARY_OPTIMIZED
  RTI_INCLUDE_DIR
)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(RTI "Could NOT find RTI DDS core library"
  RTI_CORE_LIBRARY_OPTIMIZED
  RTI_INCLUDE_DIR
)

# Collect optimized and debug libraries
HANDLE_LIBRARY_TYPES(RTI_C_LIBRARY_OPTIMIZED)
HANDLE_LIBRARY_TYPES(RTI_CPP_LIBRARY_OPTIMIZED)
HANDLE_LIBRARY_TYPES(RTI_CORE_LIBRARY_OPTIMIZED)

MARK_AS_ADVANCED(
  RTI_INCLUDE_DIR
  RTI_C_LIBRARY_OPTIMIZED
  RTI_CPP_LIBRARY_OPTIMIZED
  RTI_CORE_LIBRARY_OPTIMIZED
)
