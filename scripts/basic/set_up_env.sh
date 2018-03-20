#!/bin/sh

set -e
set -x

HOME=$(cd `dirname $0`; pwd)
mkdir -p $HOME/lib
cd $HOME/../lib
cp -r * $HOME/lib
cd $HOME	
cp -r lib/ ../cse-consumer/
cp -r lib/ ../dubbo-consumer/

cd $HOME/../
./copy_mesher.sh
