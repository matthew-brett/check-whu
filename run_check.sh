export WHEELHOUSE_UPLOADER_USERNAME=travis-worker
export WHEELHOUSE_UPLOADER_SECRET=$(cat ~/.scikit_creds | grep api_key | cut -d" " -f3)
CONTAINER="my_wheelhouse"
UPLOAD_ARGS="--no-update-index";
TRAVIS_BUILD_DIR=$PWD
pip install wheelhouse-uploader
python -m wheelhouse_uploader upload --local-folder \
    ${TRAVIS_BUILD_DIR}/wheelhouse/ \
    $UPLOAD_ARGS \
    $CONTAINER
