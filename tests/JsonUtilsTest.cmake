set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/..")
include(JsonUtils)

#
# TEST1: set json value by dot notation '.'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json1/object.json"        TEST_JSON1_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json1/value.json"         TEST_JSON1_VALUE_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json1/object_answer.json" TEST_JSON1_OBJECT_ANSWER_CNT)
set(TEST_JSON1_OBJECT         "${TEST_JSON1_OBJECT_CNT}")
set(TEST_JSON1_DOT_NOTATION   ".")
set(TEST_JSON1_VALUE          "${TEST_JSON1_VALUE_CNT}")
set(TEST_JSON1_OBJECT_RESULT)
set(TEST_JSON1_OBJECT_ANSWER  "${TEST_JSON1_OBJECT_ANSWER_CNT}")
set_json_value_by_dot_notation(
    ERROR_VARIABLE      TEST_JSON1_CALL_ERR
    IN_JSON_OBJECT      "${TEST_JSON1_OBJECT}"
    IN_DOT_NOTATION     "${TEST_JSON1_DOT_NOTATION}"
    IN_JSON_VALUE       "${TEST_JSON1_VALUE}"
    OUT_JSON_OBJECT     TEST_JSON1_OBJECT_RESULT)

#
# JSON2: set json value by dot notation '.po'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json2/object.json"        TEST_JSON2_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json2/value.json"         TEST_JSON2_VALUE_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json2/object_answer.json" TEST_JSON2_OBJECT_ANSWER_CNT)
set(TEST_JSON2_OBJECT         "${TEST_JSON2_OBJECT_CNT}")
set(TEST_JSON2_DOT_NOTATION   ".po")
set(TEST_JSON2_VALUE          "${TEST_JSON2_VALUE_CNT}")
set(TEST_JSON2_OBJECT_RESULT)
set(TEST_JSON2_OBJECT_ANSWER  "${TEST_JSON2_OBJECT_ANSWER_CNT}")
set_json_value_by_dot_notation(
    ERROR_VARIABLE      TEST_JSON2_CALL_ERR
    IN_JSON_OBJECT      "${TEST_JSON2_OBJECT}"
    IN_DOT_NOTATION     "${TEST_JSON2_DOT_NOTATION}"
    IN_JSON_VALUE       "${TEST_JSON2_VALUE}"
    OUT_JSON_OBJECT     TEST_JSON2_OBJECT_RESULT)

#
# JSON3: set json value by dot notation '.po.zh_TW'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json3/object.json"        TEST_JSON3_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json3/value.json"         TEST_JSON3_VALUE_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json3/object_answer.json" TEST_JSON3_OBJECT_ANSWER_CNT)
set(TEST_JSON3_OBJECT           "${TEST_JSON3_OBJECT_CNT}")
set(TEST_JSON3_DOT_NOTATION     ".po.zh_TW")
set(TEST_JSON3_VALUE            "${TEST_JSON3_VALUE_CNT}")
set(TEST_JSON3_OBJECT_RESULT)
set(TEST_JSON3_OBJECT_ANSWER    "${TEST_JSON3_OBJECT_ANSWER_CNT}")
set_json_value_by_dot_notation(
    ERROR_VARIABLE      TEST_JSON3_CALL_ERR
    IN_JSON_OBJECT      "${TEST_JSON3_OBJECT}"
    IN_DOT_NOTATION     "${TEST_JSON3_DOT_NOTATION}"
    IN_JSON_VALUE       "${TEST_JSON3_VALUE}"
    OUT_JSON_OBJECT     TEST_JSON3_OBJECT_RESULT)

#
# TEST4: set json value by dot notation '.po.zh_TW.tag'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json4/object.json"        TEST_JSON4_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json4/value.json"         TEST_JSON4_VALUE_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json4/object_answer.json" TEST_JSON4_OBJECT_ANSWER_CNT)
set(TEST_JSON4_OBJECT           "${TEST_JSON4_OBJECT_CNT}")
set(TEST_JSON4_DOT_NOTATION     ".po.zh_TW.tag")
set(TEST_JSON4_VALUE            "${TEST_JSON4_VALUE_CNT}")
set(TEST_JSON4_OBJECT_RESULT)
set(TEST_JSON4_OBJECT_ANSWER    "${TEST_JSON4_OBJECT_ANSWER_CNT}")
set_json_value_by_dot_notation(
    ERROR_VARIABLE      TEST_JSON4_CALL_ERR
    IN_JSON_OBJECT      "${TEST_JSON4_OBJECT}"
    IN_DOT_NOTATION     "${TEST_JSON4_DOT_NOTATION}"
    IN_JSON_VALUE       "${TEST_JSON4_VALUE}"
    OUT_JSON_OBJECT     TEST_JSON4_OBJECT_RESULT)

#
# TEST5: get json value by dot notation '.'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json5/object.json"        TEST_JSON5_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json5/value_answer.json"  TEST_JSON5_VALUE_ANSWER_CNT)
set(TEST_JSON5_OBJECT         "${TEST_JSON5_OBJECT_CNT}")
set(TEST_JSON5_DOT_NOTATION   ".")
set(TEST_JSON5_VALUE_RESULT)
set(TEST_JSON5_VALUE_ANSWER   "${TEST_JSON5_VALUE_ANSWER_CNT}")
get_json_value_by_dot_notation(
    ERROR_VARIABLE      TEST_JSON5_CALL_ERR
    IN_JSON_OBJECT      "${TEST_JSON5_OBJECT}"
    IN_DOT_NOTATION     "${TEST_JSON5_DOT_NOTATION}"
    OUT_JSON_VALUE      TEST_JSON5_VALUE_RESULT)

#
# TEST6: get json value by dot notation '.po'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json6/object.json"        TEST6_JSON_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json6/value_answer.json"  TEST6_JSON_VALUE_ANSWER_CNT)
set(TEST6_JSON_OBJECT         "${TEST6_JSON_OBJECT_CNT}")
set(TEST6_DOT_NOTATION        ".po")
set(TEST6_JSON_VALUE_RESULT)
set(TEST6_JSON_VALUE_ANSWER   "${TEST6_JSON_VALUE_ANSWER_CNT}")
get_json_value_by_dot_notation(
    ERROR_VARIABLE      TEST6_CALL_ERR
    IN_JSON_OBJECT      "${TEST6_JSON_OBJECT}"
    IN_DOT_NOTATION     "${TEST6_DOT_NOTATION}"
    OUT_JSON_VALUE      TEST6_JSON_VALUE_RESULT)

#
# TEST7: get json value by dot notation '.po.zh_TW'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json7/object.json"        TEST7_JSON_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json7/value_answer.json"  TEST7_JSON_VALUE_ANSWER_CNT)
set(TEST7_JSON_OBJECT         "${TEST7_JSON_OBJECT_CNT}")
set(TEST7_DOT_NOTATION        ".po.zh_TW")
set(TEST7_JSON_VALUE_RESULT)
set(TEST7_JSON_VALUE_ANSWER   "${TEST7_JSON_VALUE_ANSWER_CNT}")
get_json_value_by_dot_notation(
    ERROR_VARIABLE      TEST7_CALL_ERR
    IN_JSON_OBJECT      "${TEST7_JSON_OBJECT}"
    IN_DOT_NOTATION     "${TEST7_DOT_NOTATION}"
    OUT_JSON_VALUE      TEST7_JSON_VALUE_RESULT)

#
# TEST8: get json value by dot notation '.po.zh_TW.tag'.
#

file(READ "${CMAKE_CURRENT_LIST_DIR}/json8/object.json"        TEST8_JSON_OBJECT_CNT)
file(READ "${CMAKE_CURRENT_LIST_DIR}/json8/value_answer.json"  TEST8_JSON_VALUE_ANSWER_CNT)
set(TEST8_JSON_OBJECT         "${TEST8_JSON_OBJECT_CNT}")
set(TEST8_DOT_NOTATION        ".po.zh_TW.tag")
set(TEST8_JSON_VALUE_RESULT)
set(TEST8_JSON_VALUE_ANSWER   "${TEST8_JSON_VALUE_ANSWER_CNT}")
get_json_value_by_dot_notation(
    ERROR_VARIABLE    TEST8_CALL_ERR
    IN_JSON_OBJECT    "${TEST8_JSON_OBJECT}"
    IN_DOT_NOTATION   "${TEST8_DOT_NOTATION}"
    OUT_JSON_VALUE    TEST8_JSON_VALUE_RESULT)
set(TEST8_JSON_VALUE_RESULT "\"${TEST8_JSON_VALUE_RESULT}\"")

#
# If TEST<n>_EQUAL_OUT == ON,       then it means the result matches the answer.
# If TEST<n>_EQUAL_OUT == OFF,      then it means the result does not match the answer.
# If TEST<n>_EQUAL_OUT == NOTFOUND, then it means a syntax error has occurred.
#

string(JSON TEST_JSON1_EQUAL_OUT ERROR_VARIABLE TEST_JSON1_EQUAL_ERR EQUAL ${TEST_JSON1_OBJECT_RESULT} ${TEST_JSON1_OBJECT_ANSWER})
string(JSON TEST_JSON2_EQUAL_OUT ERROR_VARIABLE TEST_JSON2_EQUAL_ERR EQUAL ${TEST_JSON2_OBJECT_RESULT} ${TEST_JSON2_OBJECT_ANSWER})
string(JSON TEST_JSON3_EQUAL_OUT ERROR_VARIABLE TEST_JSON3_EQUAL_ERR EQUAL ${TEST_JSON3_OBJECT_RESULT} ${TEST_JSON3_OBJECT_ANSWER})
string(JSON TEST_JSON4_EQUAL_OUT ERROR_VARIABLE TEST_JSON4_EQUAL_ERR EQUAL ${TEST_JSON4_OBJECT_RESULT} ${TEST_JSON4_OBJECT_ANSWER})
string(JSON TEST_JSON5_EQUAL_OUT ERROR_VARIABLE TEST_JSON5_EQUAL_ERR EQUAL ${TEST_JSON5_VALUE_RESULT} ${TEST_JSON5_VALUE_ANSWER})
string(JSON TEST6_EQUAL_OUT ERROR_VARIABLE TEST6_EQUAL_ERR EQUAL ${TEST6_JSON_VALUE_RESULT} ${TEST6_JSON_VALUE_ANSWER})
string(JSON TEST7_EQUAL_OUT ERROR_VARIABLE TEST7_EQUAL_ERR EQUAL ${TEST7_JSON_VALUE_RESULT} ${TEST7_JSON_VALUE_ANSWER})
string(JSON TEST8_EQUAL_OUT ERROR_VARIABLE TEST8_EQUAL_ERR EQUAL ${TEST8_JSON_VALUE_RESULT} ${TEST8_JSON_VALUE_ANSWER})

# message(STATUS "TEST_JSON1_CALL_ERR = ${TEST_JSON1_CALL_ERR}")
# message(STATUS "TEST_JSON2_CALL_ERR = ${TEST_JSON2_CALL_ERR}")
# message(STATUS "TEST_JSON3_CALL_ERR = ${TEST_JSON3_CALL_ERR}")
# message(STATUS "TEST_JSON4_CALL_ERR = ${TEST_JSON4_CALL_ERR}")
# message(STATUS "TEST_JSON5_CALL_ERR = ${TEST_JSON5_CALL_ERR}")
# message(STATUS "TEST6_CALL_ERR = ${TEST6_CALL_ERR}")
# message(STATUS "TEST7_CALL_ERR = ${TEST7_CALL_ERR}")
# message(STATUS "TEST8_CALL_ERR = ${TEST8_CALL_ERR}")

message(STATUS "TEST_JSON1_EQUAL_OUT = ${TEST_JSON1_EQUAL_OUT}")
message(STATUS "TEST_JSON2_EQUAL_OUT = ${TEST_JSON2_EQUAL_OUT}")
message(STATUS "TEST_JSON3_EQUAL_OUT = ${TEST_JSON3_EQUAL_OUT}")
message(STATUS "TEST_JSON4_EQUAL_OUT = ${TEST_JSON4_EQUAL_OUT}")
message(STATUS "TEST_JSON5_EQUAL_OUT = ${TEST_JSON5_EQUAL_OUT}")
message(STATUS "TEST6_EQUAL_OUT = ${TEST6_EQUAL_OUT}")
message(STATUS "TEST7_EQUAL_OUT = ${TEST7_EQUAL_OUT}")
message(STATUS "TEST8_EQUAL_OUT = ${TEST8_EQUAL_OUT}")

# message(STATUS "TEST_JSON1_EQUAL_ERR = ${TEST_JSON1_EQUAL_ERR}")
# message(STATUS "TEST_JSON2_EQUAL_ERR = ${TEST_JSON2_EQUAL_ERR}")
# message(STATUS "TEST_JSON3_EQUAL_ERR = ${TEST_JSON3_EQUAL_ERR}")
# message(STATUS "TEST_JSON4_EQUAL_ERR = ${TEST_JSON4_EQUAL_ERR}")
# message(STATUS "TEST_JSON5_EQUAL_ERR = ${TEST_JSON5_EQUAL_ERR}")
# message(STATUS "TEST6_EQUAL_ERR = ${TEST6_EQUAL_ERR}")
# message(STATUS "TEST7_EQUAL_ERR = ${TEST7_EQUAL_ERR}")
# message(STATUS "TEST8_EQUAL_ERR = ${TEST8_EQUAL_ERR}")

execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 1)

if (TEST_JSON1_EQUAL_OUT STREQUAL "ON" AND
    TEST_JSON2_EQUAL_OUT STREQUAL "ON" AND
    TEST_JSON3_EQUAL_OUT STREQUAL "ON" AND
    TEST_JSON4_EQUAL_OUT STREQUAL "ON" AND
    TEST_JSON5_EQUAL_OUT STREQUAL "ON" AND
    TEST6_EQUAL_OUT STREQUAL "ON" AND
    TEST7_EQUAL_OUT STREQUAL "ON" AND
    TEST8_EQUAL_OUT STREQUAL "ON")
else()
    message(FATAL_ERROR "There is a fatal error!")
endif()
