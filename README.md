
# DmgISOConvert
将OS X的dmg安装文件转换为ISO格式｜convert OS X dmg to ISO

下载完毕后，可使用此脚本将dmg文件转换为iso文件。任何在Windows下进行转换的iso文件都不可用

You can use this shell scripts to convert dmg into iso after download catalina.

hdiutil create -o /tmp/Catalina -size 9000m -layout SPUD -fs HFS+J

//创建一个新镜像｜create a new disk

hdiutil attach /tmp/Catalina.dmg -noverify -mountpoint /Volumes/install_build

//将这个镜像挂载｜mount this disk

sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build

//使用自带工具创建安装介质｜use create installmedia to create installation image

hdiutil detach /Volumes/Install\ macOS\ Catalina

//重新挂载镜像以避免资源不可用问题｜re-mount this disk to avoid "Resource Temporarily Unavailable"

hdiutil convert /tmp/Catalina.dmg -format UDTO -o ~/Downloads/Catalina

//将dmg镜像转换为iso｜convert dmg to iso

mv ~/Downloads/Catalina.cdr ~/Downloads/Catalina.iso

//理论上在download文件夹里会出现iso文件了｜you can find a iso image in your download file.

