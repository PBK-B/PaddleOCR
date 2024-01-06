code_path=$(pwd)
LIB_DIR="$code_path/paddle_inference_install_dir"
OPENCV_DIR="$code_path/opencv-3.4.7/build"

# export CC="/usr/local/Cellar/gcc/13.2.0/bin/gcc"
# export CXX="/usr/local/Cellar/gcc/13.2.0/bin/g++"
# export LD_LIBRARY_PATH="/usr/local/Cellar/gcc/13.2.0/lib/:$LD_LIBRARY_PATH"

BUILD_DIR=build
rm -rf ${BUILD_DIR}
mkdir ${BUILD_DIR}
cd ${BUILD_DIR}
cmake .. \
    -DPADDLE_LIB=${LIB_DIR} \
    -DWITH_MKL=OFF \
    -DWITH_GPU=OFF \
    -DWITH_STATIC_LIB=NO \
    -DWITH_TENSORRT=OFF \
    -DWITH_OPENEXR=OFF \
    -DOPENCV_DIR=${OPENCV_DIR} \
    -DOpenCV_DIR=${OPENCV_DIR} \
    -DTENSORRT_DIR=${TENSORRT_DIR} \

make -j 10
