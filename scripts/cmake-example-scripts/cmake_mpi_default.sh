
rm -f CMakeCache.txt

cmake \
-D CMAKE_EXPORT_COMPILE_COMMANDS=ON \
-D CMAKE_BUILD_TYPE:STRING=Release \
-D CMAKE_C_COMPILER:STRING=mpicc \
-D CMAKE_CXX_COMPILER:STRING=mpicxx \
-D CMAKE_CXX_FLAGS:STRING="-O2 -std=c++11" \
-D EXODUS_INCLUDE_DIR:PATH="/opt/include" \
-D EXODUS_LIB_DIR:PATH="/opt/seacas/lib" \
-D HAVE_DARMA=OFF \
-D USE_PURE_MPI:BOOL=ON \
..
