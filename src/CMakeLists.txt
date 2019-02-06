add_library(travis-test-project
  SHARED
    sample.cpp
  )
target_include_directories(travis-test-project
    PUBLIC ${PROJECT_SOURCE_DIR}/include
  )
