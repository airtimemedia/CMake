
set(_cmake_oldestSupported "(__GNUC__ * 100 + __GNUC_MINOR__) >= 404")

# GNU 4.7 correctly sets __STDC_VERSION__ to 201112L, but GNU 4.6 sets it
# to 201000L.  As the former is strictly greater than the latter, test only
# for the latter.  If in the future CMake learns about a C feature which was
# introduced with GNU 4.7, that should test for the correct version, similar
# to the distinction between __cplusplus and __GXX_EXPERIMENTAL_CXX0X__ tests.
set(GNU46_C11 "(__GNUC__ * 100 + __GNUC_MINOR__) >= 406 && defined(__STDC_VERSION__) && __STDC_VERSION__ >= 201000L")
set(_cmake_feature_test_c_static_assert "${GNU46_C11}")
# Since 4.4 at least:
set(GNU44_C99 "(__GNUC__ * 100 + __GNUC_MINOR__) >= 404 && defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L")
set(_cmake_feature_test_c_restrict "${GNU44_C99}")
set(_cmake_feature_test_c_variadic_macros "${GNU44_C99}")

set(GNU_C90 "${_cmake_oldestSupported} && !defined(__STDC_VERSION__)")
set(_cmake_feature_test_c_function_prototypes "${GNU_C90}")
