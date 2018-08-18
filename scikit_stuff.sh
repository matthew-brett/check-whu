NP_BUILD_DEP="numpy==1.12.0"
NP_TEST_DEP="numpy==1.12.0"
BUILD_DEPENDS="$NP_BUILD_DEP Cython"
TEST_DEPENDS="$NP_TEST_DEP nose pytest $GEN_DEPS"
pip install $BUILD_DEPENDS
pip install --no-binary=scikit-image scikit-image
pip install $TEST_DEPENDS
