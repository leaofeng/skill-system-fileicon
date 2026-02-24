# system-fileicon

> macOS 文件夹图标管理工具 | macOS Folder Icon Manager

---

## 简介 | Introduction

**中文：**

基于 [mklement0/fileicon](https://github.com/mklement0/fileicon) 封装的 macOS 文件夹图标管理工具。支持设置、提取和移除自定义图标。

**English：**

A wrapper for [mklement0/fileicon](https://github.com/mklement0/fileicon) to manage macOS folder icons. Supports setting, extracting, and removing custom icons.

---

## 功能特性 | Features

| 中文 | English |
|------|---------|
| 为文件夹设置自定义图标 | Set custom icons for folders |
| 提取当前图标为 .icns 文件 | Extract current icon as .icns file |
| 恢复默认图标 | Restore default icon |
| 支持 JPG/PNG/ICNS 格式 | Support JPG/PNG/ICNS formats |

---

## 安装依赖 | Installation

```bash
# 安装 fileicon
brew install fileicon
```

---

## 使用方法 | Usage

```bash
# 设置文件夹图标 | Set folder icon
bash set-icon.sh ~/Downloads/my-folder ~/Pictures/icon.png

# 提取当前图标 | Extract current icon
bash get-icon.sh ~/Downloads/my-folder ~/Desktop

# 移除自定义图标 | Remove custom icon
bash remove-icon.sh ~/Downloads/my-folder
```

---

## 技术原理 | Technical Details

**中文：**

- 使用 macOS Resource Fork 存储图标数据
- 通过 Extended Attributes (xattr) 附加元数据
- 支持多分辨率自动适配（16×16 ~ 512×512）
- 自动将图片转换为 Apple .icns 格式

**English：**

- Uses macOS Resource Fork to store icon data
- Attaches metadata via Extended Attributes (xattr)
- Supports multi-resolution adaptation (16×16 ~ 512×512)
- Automatically converts images to Apple .icns format

---

## 限制说明 | Limitations

| 中文 | English |
|------|---------|
| 仅支持 macOS 文件系统（HFS+/APFS）| Only supports macOS filesystems (HFS+/APFS) |
| 复制到不支持 xattr 的文件系统会丢失图标 | Icons lost when copying to non-xattr filesystems |
| 无法存储在 Git 版本控制中 | Cannot be stored in Git version control |

---

## 原始项目 | Original Project

基于 [mklement0/fileicon](https://github.com/mklement0/fileicon)

---

## 作者 | Author

[leaofeng](https://github.com/leaofeng)

---

## 许可证 | License

MIT
