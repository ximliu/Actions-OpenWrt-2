#!/bin/bash

echo '删除插件'
cd openwrt
rm -rf package/lean/luci-theme-argon
rm -rf package/base-files/files/etc/banne

echo '替换“banner”'
cp -f ./banner openwrt/package/base-files/files/etc/

echo '修改密码'
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

echo '修改内核'
#sed -i 's/KERNEL_PATCHVER:=4.14/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile  #修改内核版本

echo '增加自定义插件'
cd openwrt/package/diy/
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom
git clone -b master https://github.com/vernesong/OpenClash.git
git clone https://github.com/frainzy1477/luci-app-clash
git clone https://github.com/tty228/luci-app-serverchan
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git
git clone https://github.com/garypang13/luci-app-eqos
git clone https://github.com/fw876/helloworld.git
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks
git clone https://github.com/jerrykuku/node-request.git
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git

