


hdiutil create -o /tmp/Catalina -size 9000m -layout SPUD -fs HFS+J

hdiutil attach /tmp/Catalina.dmg -noverify -mountpoint /Volumes/install_build

sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build

hdiutil detach /Volumes/Install\ macOS\ Catalina

hdiutil convert /tmp/Catalina.dmg -format UDTO -o ~/Downloads/Catalina

mv ~/Downloads/Catalina.cdr ~/Downloads/Catalina.iso