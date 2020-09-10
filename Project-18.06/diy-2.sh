# 修改内核版本（版本内核默认4.19，还有4.14跟4.9内核）
#sed -i 's/KERNEL_PATCHVER:=4.19/KERNEL_PATCHVER:=4.9/g' ./target/linux/x86/Makefile

# 删除已知的重复文件
rm -rf ./package/lienol/luci-app-timecontrol

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"BaiduPCS Web"/"百度网盘"/g' package/ctcgfw/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
sed -i 's/"aMule设置"/"电驴下载"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-turboacc/po/zh-cn/turboacc.po
sed -i 's/"实时流量监测"/"流量"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
sed -i 's/"KMS 服务器"/"KMS激活"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
sed -i 's/"TTYD 终端"/"终端命令"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/"USB 打印服务器"/"打印服务"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/"Web 管理"/"页面管理"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
sed -i 's/带宽监控/监视/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/"管理权"/"修改密码"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"系统"/"路由设置"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"软件包"/"软件列表"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i 's/"启动项"/"启用/禁用"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
