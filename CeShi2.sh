sed -i 's/BaiduPCS Web/百度网盘/g' ./package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' ./package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
sed -i 's/aMule设置/电驴下载/g' ./package/lean/luci-app-amule/po/zh-cn/amule.po
sed -i 's/Turbo ACC 网络加速/网络加速/g' ./package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Turbo ACC 网络加速/网络加速/g' ./package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/带宽监控/监视/g' ./feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/实时流量监测/实时流量/g' ./package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
