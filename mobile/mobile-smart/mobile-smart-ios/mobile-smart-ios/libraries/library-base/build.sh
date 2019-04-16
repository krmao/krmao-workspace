#!/bin/bash
#进入脚本目录
echo 'start build ...'
BASEDIR=$(dirname $0)
cd $BASEDIR

build_cmd='xcodebuild OTHER_CFLAGS="-fembed-bitcode" -target library-base -configuration '${CONFIGURATION}' -sdk '${SDK_NAME}
echo '执行build命令: '${build_cmd}
${build_cmd}
