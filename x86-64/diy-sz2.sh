sed -i 's/BaiduPCS Web/百度网盘/g' ./package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' ./package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
sed -i 's/aMule设置/电驴下载/g' ./package/lean/luci-app-amule/po/zh-cn/amule.po
sed -i 's/Turbo ACC 网络加速/网络加速/g' ./package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/Turbo ACC 网络加速/网络加速/g' ./package/lean/luci-app-sfe/po/zh-cn/sfe.po
sed -i 's/带宽监控/监视/g' ./feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/实时流量监测/实时流量/g' ./package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i "s/OpenWrt /P3TERX build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
sed -i '/openwrt_luci/ { s/sed/#sed/g; }' package/lean/default-settings/files/zzz-default-settings
sed -i 's|openwrt.proxy.ustclug.org|256pd.top:9666/稳定版/x64|g' package/lean/default-settings/files/zzz-default-settings
sed -i '/downloads/ { s/s\//s|/g; }' package/lean/default-settings/files/zzz-default-settings
sed -i '/downloads/ { s/org\//org|/g; }' package/lean/default-settings/files/zzz-default-settings
sed -i '/downloads/ { s/x64\//x64|/g; }' package/lean/default-settings/files/zzz-default-settings
sed -i 's/http:/snapshots/' package/lean/default-settings/files/zzz-default-settings
sed -i 's/https:/bin/g' package/lean/default-settings/files/zzz-default-settings
