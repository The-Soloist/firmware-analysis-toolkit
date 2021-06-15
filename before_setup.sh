###
# @Author: The Soloist
# @Time: 2021-01-06 13:53:28
# @File: /pre-install.sh
# @Description:
###

set -x

git clone --depth=1 https://github.com/devttys0/binwalk.git
git clone --depth=1 http://github.com/rampageX/firmware-mod-kit
git clone --recursive https://github.com/firmadyne/firmadyne.git
# git clone --depth=1 https://github.com/nccgroup/TriforceAFL

cd qemu-builds
wget -O qemu-system-static-2.5.0.zip "https://github.com/attify/firmware-analysis-toolkit/files/4244529/qemu-system-static-2.5.0.zip"
cd ../

cd firmadyne
./download.sh
cd ../

./diff/gen_diff.sh
