FIND_PATH(LIBMESHB_INCLUDE_DIR libmeshb7.h
  /usr/local/include
  )

FIND_LIBRARY(LIBMESHB_LIBRARY libmeshb.a
  /usr/local/lib
  )

IF(LIBMESHB_INCLUDE_DIR)
  ADD_DEFINITIONS(-DHAVE_LIBMESHB)
  IF(LIBMESHB_LIBRARY)
    SET( LIBMESHB_LIBRARIES ${LIBMESHB_LIBRARY})
    SET( LIBMESHB_FOUND "YES" )
  ENDIF(LIBMESHB_LIBRARY)
ENDIF(LIBMESHB_INCLUDE_DIR)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(LIBMESHB DEFAULT_MSG LIBMESHB_INCLUDE_DIR )

MARK_AS_ADVANCED( LIBMESHB_INCLUDE_DIR LIBMESHB_LIBRARY)