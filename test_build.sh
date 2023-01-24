test -z "$OFFLINE_MAIN" && echo "Need set 'OFFLINE_MAIN'.  Abort." && exit
test -z "$MY_INSTALL"   && echo   "Need set 'MY_INSTALL'.  Abort." && exit

src=$(dirname $(readlink -f $0))
build=$src/../core-build
install=$MY_INSTALL

echo $src
echo $build
echo $install
