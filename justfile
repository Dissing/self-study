
set dotenv-load

default:
  just --list

setup-build PROJECT:
    mkdir -p $WORKSPACE/{{PROJECT}}/debug
    cmake -B $WORKSPACE/{{PROJECT}}/debug -S projects/{{PROJECT}} -GNinja \
        -DCMAKE_BUILD_TYPE=Debug \
        -DROOT_PATH=`pwd` \
        -DCMAKE_MODULE_PATH=`pwd`/libraries/cmake

build PROJECT:
    ninja -C $WORKSPACE/{{PROJECT}}/debug

run PROJECT:
    $WORKSPACE/{{PROJECT}}/debug/{{PROJECT}}

b: (build `echo $CURRENT_PROJECT`)

r: (run `echo $CURRENT_PROJECT`)
