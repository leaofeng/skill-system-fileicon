#!/bin/bash
# FileIcon Mac - 移除文件/文件夹自定义图标
# Usage: remove-icon.sh <目标路径>

TARGET="$1"

# 检查参数
if [ -z "$TARGET" ]; then
    echo "❌ 用法: remove-icon.sh <目标路径>"
    echo ""
    echo "示例:"
    echo "  remove-icon.sh ~/Downloads/my-folder"
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

# 移除图标
echo "🗑️  移除图标..."
echo "   目标: $TARGET"
echo ""

fileicon rm "$TARGET"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 图标已移除，恢复默认！"
    echo ""
    echo "💡 提示: 如果 Finder 中未立即显示，尝试:"
    echo "   1. 按 Cmd+Option+Esc 重启 Finder"
    echo "   2. 或注销重新登录"
else
    echo ""
    echo "❌ 移除失败"
    exit 1
fi
