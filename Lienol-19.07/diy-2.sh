# 修改 banne 文件（banne在根目录的Lienol-19.07文件夹）
rm -rf ./package/base-files/files/etc/banne && cd .. && cp -f ./Lienol-19.07/banner openwrt/package/base-files/files/etc/ && cd openwrt

# 修改 argon 为默认主题（编译时候不选择那些会自动更改为默认主题的主题才有效）
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

#sed -i 's/KERNEL_PATCHVER:=4.14/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile  #修改内核版本

# 修改插件名字（修改名字后会不会对插件功能有影响自己多测试）
sed -i 's/"BaiduPCS Web"/"百度网盘"/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
sed -i 's/"aMule设置"/"电驴下载"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/"实时流量监测"/"流量"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
sed -i 's/"KMS 服务器"/"KMS激活"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
#sed -i 's/"TTYD 终端"/"终端命令"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/"USB 打印服务器"/"打印服务"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/"Web 管理"/"页面管理"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
sed -i 's/"带宽监控"/"监视"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/"管理权"/"修改密码"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"系统"/"路由设置"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"软件包"/"软件列表"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"启动项"/"启动项目"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
