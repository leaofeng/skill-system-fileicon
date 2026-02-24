# system-fileicon

macOS 文件夹图标管理工具

## 功能

- 为 macOS 文件/文件夹设置自定义图标
- 从图片自动生成 .icns 图标格式
- 提取当前图标为独立文件
- 恢复默认图标

## 安装依赖

```bash
# 安装 fileicon
brew install fileicon
```

## 使用方法

```bash
# 设置文件夹图标
bash set-icon.sh ~/Downloads/my-folder ~/Pictures/icon.png

# 提取当前图标
bash get-icon.sh ~/Downloads/my-folder ~/Desktop

# 移除自定义图标
bash remove-icon.sh ~/Downloads/my-folder
```

## 技术原理

- 使用 macOS Resource Fork 存储图标
- 通过 Extended Attributes (xattr) 附加元数据
- 支持 JPG/PNG/ICNS 格式输入
- 自动适配多分辨率（16x16 ~ 512x512）

## 限制

- 仅支持 macOS 文件系统（HFS+/APFS）
- 复制到不支持 xattr 的文件系统会丢失图标
- 无法存储在 Git 版本控制中

## 原始项目

基于 [mklement0/fileicon](https://github.com/mklement0/fileicon)

## 作者

leaofeng
