#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i 's/1.2021.35/2022.05.22/g' feeds/packages/net/smartdns/Makefile
#sed -i 's/f50e4dd0813da9300580f7188e44ed72a27ae79c/bc68d5979ccf4beb2721e1e466539da550236f68/g' feeds/packages/net/smartdns/Makefile
#sed -i 's/^PKG_MIRROR_HASH/#&/' feeds/packages/net/smartdns/Makefile
