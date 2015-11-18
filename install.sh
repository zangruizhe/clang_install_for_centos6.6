#!/bin/sh

base_dir="$(cd "$(dirname "$0")";pwd)"

$(unalias cp)

$(cd "${base_dir}")

echo "copy file usr/local/bin/*"
$(cp -rf usr/local/bin/* /usr/local/bin/)
$(cp -rf usr/local/bin/* /usr/bin/)
echo "copy file usr/local/include/*"
$(cp -rf usr/local/include/* /usr/local/include/)
$(cp -rf usr/local/include/* /usr/include/)
echo "copy file usr/local/lib/*"
$(cp -rf usr/local/lib/* /usr/local/lib/)
$(cp -rf usr/local/lib/* /usr/lib/)
echo "copy file usr/local/docs/*"
$(cp -rf usr/local/docs/* /usr/local/docs/)
$(cp -rf usr/local/docs/* /usr/docs/)
echo "copy file usr/local/share/*"
$(cp -rf usr/local/share/* /usr/local/share/)
$(cp -rf usr/local/share/* /usr/share/)

echo "change link success, then update ldconfig"
$(updatedb)
$(ldconfig)

echo ""
echo "==============================="
echo ""
echo "install clang success"
echo ""
echo "==============================="
echo ""
