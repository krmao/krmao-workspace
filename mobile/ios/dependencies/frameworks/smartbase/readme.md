# create static framework

### 1 新建工程

> Xcode -> File -> New -> Project -> ios Cocoa Touch Framework

### 2 set framework to static

> targets -> Build Settings -> Linking -> Mach-O Type -> Static Library

### 3 set headers

> targets -> Build Phases -> Headers -> Public

> and then import headers in project_name.h

### 4 set Architectures

> targets -> Build Settings -> All Combined -> Architectures -> Build Active Architectures Only -> Debug/Release -> No(All Devices)/Yes(Only Current Device)

### 5 build

> select device to Generic ios Device -> command + B

> select device to simulator -> command + B

### 6 merge simulator and devices framework

```bash
# 合并 模拟器/真机 生成新的文件
lipo -create path/Debug-iphoneos/project_name.framework/project_name Debug-iphonesimulator/project_name.framework/project_name -output ~/Desktop/project_name

# 将 framework 拷贝到桌面
copy path/Debug-iphoneos/project_name.framework ~/Desktop/

# 替换里面的文件, 即得到最终的 framework, 模拟器/真机都可以使用
mv ~/Desktop/project_name ~/Desktop/project_name.framework

```

### 7 linked to project

> create references to project -> targets -> General -> Linked Frameworks and Libraries


### 8 change build output path

> Build Locations -> Per-configuration Build Products Path