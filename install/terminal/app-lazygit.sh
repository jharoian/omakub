cd /tmp

# map different architecture variations to the available binaries
LAZYGIT_ARCH=$(uname -m)
case $LAZYGIT_ARCH in
    i386|i686) LAZYGIT_ARCH=x86 ;;
    armv6*) LAZYGIT_ARCH=armv6 ;;
    armv7*) LAZYGIT_ARCH=armv7 ;;
    aarch64*) LAZYGIT_ARCH=arm64 ;;
esac

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -sLo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_${LAZYGIT_ARCH}.tar.gz"
tar -xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz lazygit
cd -
