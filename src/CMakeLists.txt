add_library(sample
  SHARED
    sample.cpp
  )
target_include_directories(sample
    PUBLIC ${PROJECT_SOURCE_DIR}/include
  )
