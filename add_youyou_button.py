#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
批量为所有章节页面添加悠悠浮动按钮
排除: 目录页(*Catalog.ets)、首页(Index.ets)、法律页、悠悠聊天页
"""

import os
import re
from pathlib import Path

ROOT_PATH = Path(r"D:\DevEcoStudioProjects\MathConceptsUnlocked\entry\src\main\ets\pages")

# 排除的文件模式
EXCLUDE_PATTERNS = [
    r".*Catalog\.ets$",
    r".*Index\.ets$",
    r".*\\Legal\\.*\.ets$",
    r".*\\Youyou\\.*\.ets$",
]

def should_exclude(file_path):
    """检查文件是否应该被排除"""
    path_str = str(file_path)
    for pattern in EXCLUDE_PATTERNS:
        if re.match(pattern, path_str):
            return True
    return False

def has_youyou_button(content):
    """检查是否已经添加了悠悠按钮"""
    return "YouyouFloatingButton" in content

def add_import_statement(content):
    """添加YouyouFloatingButton的import语句"""
    if "YouyouFloatingButton" in content:
        return content
    
    # 在 import router 后添加
    pattern = r"(import router from '@ohos\.router';)"
    replacement = r"\1\nimport { YouyouFloatingButton } from '../../components/YouyouFloatingButton';"
    return re.sub(pattern, replacement, content, count=1)

def modify_build_structure(content):
    """将Column包裹在Stack中,并添加悠悠按钮"""
    # 1. 将 build() { Column() 改为 build() { Stack() { Column()
    content = re.sub(
        r"(build\(\) \{\s*)\n(\s*)Column\(\)",
        r"\1\n\2Stack() {\n\2  Column()",
        content,
        count=1
    )
    
    # 2. 在文件末尾的 } } 前添加悠悠按钮
    # 查找最后的 .backgroundColor('#FFFFFF') } }
    pattern = r"(\s+)(\.backgroundColor\('#FFFFFF'\))(\s+)(\}\s+\}\s*)$"
    replacement = r"\1\2\3\n      // 悠悠浮动按钮\n      YouyouFloatingButton()\n    }\n  }\n}"
    
    content = re.sub(pattern, replacement, content)
    
    return content

def process_file(file_path):
    """处理单个文件"""
    try:
        # 读取文件 (UTF-8 with BOM)
        with open(file_path, 'r', encoding='utf-8-sig') as f:
            content = f.read()
        
        # 检查是否已有悠悠按钮
        if has_youyou_button(content):
            return "skipped", "已有悠悠按钮"
        
        # 添加import
        content = add_import_statement(content)
        
        # 修改build结构
        content = modify_build_structure(content)
        
        # 写回文件 (UTF-8 with BOM, 保持CRLF)
        with open(file_path, 'w', encoding='utf-8-sig', newline='\r\n') as f:
            f.write(content)
        
        return "success", "成功更新"
    
    except Exception as e:
        return "error", str(e)

def main():
    """主函数"""
    print("=" * 60)
    print("批量添加悠悠浮动按钮到所有章节页面")
    print("=" * 60)
    
    # 收集所有.ets文件
    all_files = list(ROOT_PATH.rglob("*.ets"))
    
    stats = {
        "total": 0,
        "success": 0,
        "skipped": 0,
        "excluded": 0,
        "error": 0
    }
    
    for file_path in all_files:
        stats["total"] += 1
        
        # 检查是否排除
        if should_exclude(file_path):
            print(f"[排除] {file_path.relative_to(ROOT_PATH)}")
            stats["excluded"] += 1
            continue
        
        # 处理文件
        status, message = process_file(file_path)
        
        if status == "success":
            print(f"[✓] {file_path.relative_to(ROOT_PATH)}")
            stats["success"] += 1
        elif status == "skipped":
            print(f"[跳过] {file_path.relative_to(ROOT_PATH)} - {message}")
            stats["skipped"] += 1
        else:
            print(f"[✗] {file_path.relative_to(ROOT_PATH)} - {message}")
            stats["error"] += 1
    
    # 输出统计
    print()
    print("=" * 60)
    print("处理完成!")
    print("=" * 60)
    print(f"总文件数: {stats['total']}")
    print(f"✓ 成功更新: {stats['success']}")
    print(f"⊙ 跳过(已有): {stats['skipped']}")
    print(f"- 排除文件: {stats['excluded']}")
    print(f"✗ 错误: {stats['error']}")
    print("=" * 60)

if __name__ == "__main__":
    main()
