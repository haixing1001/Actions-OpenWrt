#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/applications/luci-app-smartdns
sed -i 's/1.2021.35/2022.05.22/g' feeds/packages/net/smartdns/Makefile
sed -i 's/f50e4dd0813da9300580f7188e44ed72a27ae79c/bc68d5979ccf4beb2721e1e466539da550236f68/g' feeds/packages/net/smartdns/Makefile
sed -i 's/^PKG_MIRROR_HASH/#&/' feeds/packages/net/smartdns/Makefile
