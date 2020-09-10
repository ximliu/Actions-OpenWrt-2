# 修改banne文件（banne在根目录Lede-17.01文件夹里面）
rm -rf ./package/base-files/files/etc/banne && cd .. && cp -f ./Lede-17.01/banner openwrt/package/base-files/files/etc/ && cd openwrt

# 修改argon为默认主题（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

#sed -i 's/KERNEL_PATCHVER:=4.19/KERNEL_PATCHVER:=4.9/g' ./target/linux/x86/Makefile  #修改内核版本

