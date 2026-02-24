#!/bin/bash
# FileIcon Mac - 设置文件/文件夹图标
# Usage: set-icon.sh <目标路径> <图片路径>

TARGET="$1"
IMAGE="$2"

# 检查参数
if [ -z "$TARGET" ] || [ -z "$IMAGE" ]; then
    echo "❌ 用法: set-icon.sh <目标路径> <图片路径>"
    echo ""
    echo "示例:"
    echo "  set-icon.sh ~/Downloads/my-folder ~/Pictures/icon.png"
    exit 1
fi

# 检查 fileicon 是否安装
if ! command -v fileicon &> /dev/null; then
    echo "⚠️  fileicon 未安装，正在安装..."
    brew install fileicon
    if [ $? -ne 0 ]; then
        echo "❌ 安装失败"
        exit 1
    fi
    echo "✅ fileicon 安装完成"
fi

# 检查目标是否存在
if [ ! -e "$TARGET" ]; then
    echo "❌ 目标不存在: $TARGET"
    exit 1
fi

# 检查图片是否存在
if [ ! -f "$IMAGE" ]; then
    echo "❌ 图片不存在: $IMAGE"
    exit 1
fi

# 设置图标
echo "🎨 设置图标..."
echo "   目标: $TARGET"
echo "   图片: $(basename "$IMAGE")"
echo ""

fileicon set "$TARGET" "$IMAGE"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 图标设置成功！"
    echo ""
    echo "💡 提示: 如果 Finder 中未立即显示，尝试:"
    echo "   1. 按 Cmd+Option+Esc 重启 Finder"
    echo "   2. 或注销重新登录"
else
    echo ""
    echo "❌ 图标设置失败"
    exit 1
fi

# Version: 1.0.0

# Test: version marker
