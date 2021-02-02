This dir contains cmake scripts.
To be able to use them within your cmake file you have to specify cmake:

```cmake
#make sure we can import our cmake functions (borrowed from: https://github.com/google/benchmark )
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
```


## links
https://www.brianlheim.com/2018/04/09/cmake-cheat-sheet.html
https://habr.com/ru/post/330902/

## info about using code coverage
https://github.com/bilke/cmake-modules/blob/master/CodeCoverage.cmake