add_executable(test_sample.out test_sample.cpp)
add_executable(test_sample2.out test_sample2.cpp)

target_link_libraries(test_sample.out sample)
target_link_libraries(test_sample2.out sample2)

