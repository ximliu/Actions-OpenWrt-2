# 修改banne文件（banne在根目录Lede-17.01文件夹里面）
#rm -rf ./package/base-files/files/etc/banne && cd .. && cp -f ./Lede-17.01/banner openwrt/package/base-files/files/etc/ && cd openwrt

# 修改argon为默认主题（不选择那些会自动改变为默认主题的主题才有效果）
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 版本号里显示一个自己的名字（281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile  #修改内核版本
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' ./target/linux/x86/Makefile  #修改内核版本

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）

sed -i 's/"Web 管理"/"页面管理"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
sed -i 's/"管理权"/"修改密码"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"系统"/"路由设置"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"软件包"/"软件列表"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"启动项"/"启用/禁用"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
