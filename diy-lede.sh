#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 说明：
# 除了第一行的#!/bin/bash不要动，其他的设置，前面带#表示不起作用，不带的表示起作用了（根据你自己需要打开或者关闭）
#
echo '“修改banner”'
rm -rf ./package/base-files/files/etc/banne && cd .. && cp -f ./banner openwrt/package/base-files/files/etc/ && cd openwrt


echo '修改机器名称'
sed -i 's/OpenWrt/OpenWrt-123/g' ./package/base-files/files/bin/config_generate


echo '修改登陆IP'
sed -i 's/192.168.1.1/192.168.2.2/g' ./package/base-files/files/bin/config_generate


echo '设置密码为空'
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' ./package/lean/default-settings/files/zzz-default-settings


echo '修改内核版本'
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile


echo '使用源码自带ShadowSocksR Plus+'
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
echo '添加自定义插件链接'
cd package/lean/
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git  #主题-edge-动态登陆界面
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git  #透明主题
git clone -b master https://github.com/vernesong/OpenClash.git  #openclash出国软件
git clone https://github.com/frainzy1477/luci-app-clash.git  #clash出国软件
git clone https://github.com/tty228/luci-app-serverchan.git  #微信推送
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git  #smartdns DNS加速
git clone https://github.com/garypang13/luci-app-eqos.git  #内网IP限速工具
git clone https://github.com/jerrykuku/node-request.git  #京东签到依赖
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git  #京东签到
svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall  #passwall出国软件
svn co https://github.com/xiaorouji/openwrt-package/trunk/packagee  #passwall出国软件依赖
rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
cd .. && cd ..
