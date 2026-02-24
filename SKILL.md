# FileIcon Mac - macOS 文件/文件夹图标管理工具

封装 [mklement0/fileicon](https://github.com/mklement0/fileicon) 的 macOS 图标管理功能。

## 功能

- 为文件或文件夹设置自定义图标
- 提取当前图标为 .icns 文件
- 移除自定义图标恢复默认
- 支持 JPG/PNG/ICNS 等多种图片格式

## 依赖

- macOS 系统
- Homebrew: `brew install fileicon`
- 支持 HFS+ / APFS 文件系统

## 使用方式

### 命令行

```bash
# 设置文件夹图标
bash ~/.openclaw/skills/system/system-fileicon/set-icon.sh /path/to/文件夹 /path/to/图片.jpg

# 提取图标
bash ~/.openclaw/skills/system/system-fileicon/get-icon.sh /path/to/文件夹

# 移除图标
bash ~/.openclaw/skills/system/system-fileicon/remove-icon.sh /path/to/文件夹
```

### 直接调用 fileicon

```bash
# 安装后直接使用
fileicon set /path/to/目标 /path/to/图片
fileicon get /path/to/目标
fileicon rm /path/to/目标
```

## 示例

```bash
# 给下载文件夹设置图标
bash ~/.openclaw/skills/system/system-fileicon/set-icon.sh \
    ~/Downloads/my-folder \
    ~/Pictures/my-icon.png

# 提取当前图标
bash ~/.openclaw/skills/system/system-fileicon/get-icon.sh ~/Downloads/my-folder
# 输出: my-folder.icns

# 恢复默认图标
bash ~/.openclaw/skills/system/system-fileicon/remove-icon.sh ~/Downloads/my-folder
```

## 技术说明

- 使用 macOS Extended Attributes (xattr) 存储图标
- 图片自动转换为 .icns 格式
- 支持多分辨率（16x16 到 512x512）
- 依赖 Resource Fork 机制

## 限制

- 仅支持 macOS 文件系统（HFS+/APFS）
- 复制到不支持 xattr 的文件系统会丢失图标
- 无法存储在 Git 等版本控制系统中

## 原始项目

- **作者**: Michael Klement (@mklement0)
- **源码**: https://github.com/mklement0/fileicon
- **许可证**: MIT
