# Installation instructions for custom SpinQuest displaced tracking

```
git clone git@github.com:ammitra/e1039-core.git
cd e1039-core/
git checkout feb_7_2024_testing

./script/setup-install.sh auto
source ../core-inst/this-e1039.sh
./build.sh

git clone git@github.com:ammitra/DarkQuest.git
cd DarkQuest
git checkout addTimer

cd e1039-analysis/SimHits/
```

Now make a file `base.sh` and add the following lines:
```
export MY_E1039=XXX/../../../../core-inst/this-e1039.sh
export DIR_TOP=$(dirname $(readlink -f $BASH_SOURCE))
echo $DIR_TOP
source $MY_E1039
export LD_LIBRARY_PATH=$DIR_TOP/install/lib/:$LD_LIBRARY_PATH
export DIR_CMANTILL=XXX/macros/
```

Save the file then continue the installation process:
```
sed "s@XXX@$PWD@g" base.sh > setup_mye1039.sh
source setup_mye1039.sh
mkdir work
mkdir install
cd work
cmake ../src/ -DCMAKE_INSTALL_PREFIX=../install
make clean
make
make install
cd ../../
pwd
```

