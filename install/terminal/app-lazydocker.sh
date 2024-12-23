cd /tmp

# map different architecture variations to the available binaries
LAZYDOCKER_ARCH=$(uname -m)
case $LAZYDOCKER_ARCH in
    i386|i686) LAZYDOCKER_ARCH=x86 ;;
    armv6*) LAZYDOCKER_ARCH=armv6 ;;
    armv7*) LAZYDOCKER_ARCH=armv7 ;;
    aarch64*) LAZYDOCKER_ARCH=arm64 ;;
esac

LAZYDOCKER_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -sLo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${LAZYDOCKER_VERSION}_Linux_${LAZYDOCKER_ARCH}.tar.gz"
tar -xf lazydocker.tar.gz lazydocker
sudo install lazydocker /usr/local/bin
rm lazydocker.tar.gz lazydocker
cd -
