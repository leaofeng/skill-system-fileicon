#!/bin/bash
# FileIcon Mac - 提取文件/文件夹图标
# Usage: get-icon.sh <目标路径> [输出目录]

TARGET="$1"
OUTPUT_DIR="${2:-.}"

# 检查参数
if [ -z "$TARGET" ]; then
    echo "❌ 用法: get-icon.sh <目标路径> [输出目录]"
    echo ""
    echo "示例:"
    echo "  get-icon.sh ~/Downloads/my-folder"
    echo "  get-icon.sh ~/Downloads/my-folder ~/Desktop"
    exit 1
fi

# 检查 fileicon 是否安装
if ! command -v fileicon &> /dev/null; then
    echo "❌ fileicon 未安装，请先运行: brew install fileicon"
    exit 1
fi

# 检查目标是否存在
if [ ! -e "$TARGET" ]; then
    echo "❌ 目标不存在: $TARGET"
    exit 1
fi

# 检查输出目录
if [ ! -d "$OUTPUT_DIR" ]; then
    echo "❌ 输出目录不存在: $OUTPUT_DIR"
    exit 1
fi

# 提取图标
echo "📦 提取图标..."
echo "   目标: $TARGET"
echo "   输出: $OUTPUT_DIR"
echo ""

cd "$OUTPUT_DIR" || exit 1
fileicon get "$TARGET"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 图标提取成功！"
else
    echo ""
    echo "❌ 图标提取失败（可能目标没有自定义图标）"
    exit 1
fi
