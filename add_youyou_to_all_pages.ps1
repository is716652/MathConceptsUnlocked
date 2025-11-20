# 批量为所有章节页面添加悠悠浮动按钮
# 排除目录页、首页、法律页面、悠悠聊天页

$rootPath = "D:\DevEcoStudioProjects\MathConceptsUnlocked\entry\src\main\ets\pages"

# 需要排除的文件模式
$excludePatterns = @(
    "*Catalog.ets",
    "Index.ets",
    "*\Legal\*.ets",
    "*\Youyou\*.ets"
)

# 获取所有 .ets 文件
$files = Get-ChildItem -Path $rootPath -Filter "*.ets" -Recurse

$updatedCount = 0
$skippedCount = 0
$errorCount = 0

foreach ($file in $files) {
    $relativePath = $file.FullName.Replace("$rootPath\", "")
    
    # 检查是否需要排除
    $shouldExclude = $false
    foreach ($pattern in $excludePatterns) {
        if ($relativePath -like $pattern) {
            $shouldExclude = $true
            Write-Host "跳过: $relativePath (排除文件)" -ForegroundColor Yellow
            $skippedCount++
            break
        }
    }
    
    if ($shouldExclude) {
        continue
    }
    
    # 读取文件内容
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    
    # 检查是否已经有悠悠按钮
    if ($content -match "YouyouFloatingButton") {
        Write-Host "跳过: $relativePath (已有悠悠按钮)" -ForegroundColor Cyan
        $skippedCount++
        continue
    }
    
    try {
        # 1. 添加 import 语句
        if ($content -notmatch "import.*YouyouFloatingButton") {
            $content = $content -replace "(import router from '@ohos\.router';)", "`$1`r`nimport { YouyouFloatingButton } from '../../components/YouyouFloatingButton';"
        }
        
        # 2. 将最外层 Column 改为 Stack，并在末尾添加悠悠按钮
        # 查找 build() 方法中的主 Column
        if ($content -match "build\(\) \{\s*Column\(\)") {
            # 替换 Column() 为 Stack()，然后在原 Column 包裹后添加悠悠按钮
            $content = $content -replace "build\(\) \{\s*Column\(\)", "build() {`r`n    Stack() {`r`n      Column()"
            
            # 在最后的 } } 前添加悠悠按钮和额外的 }
            $content = $content -replace "(\s+)\.backgroundColor\('#FFFFFF'\)\s*\}\s*\}\s*$", "`$1.backgroundColor('#FFFFFF')`r`n`r`n      // 悠悠浮动按钮`r`n      YouyouFloatingButton()`r`n    }`r`n  }`r`n}"
        }
        
        # 写回文件
        $content | Set-Content -Path $file.FullName -Encoding UTF8 -NoNewline
        
        Write-Host "✓ 更新: $relativePath" -ForegroundColor Green
        $updatedCount++
    }
    catch {
        Write-Host "✗ 错误: $relativePath - $($_.Exception.Message)" -ForegroundColor Red
        $errorCount++
    }
}

Write-Host "`n================================" -ForegroundColor Cyan
Write-Host "批量更新完成!" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host "更新文件: $updatedCount" -ForegroundColor Green
Write-Host "跳过文件: $skippedCount" -ForegroundColor Yellow
Write-Host "错误文件: $errorCount" -ForegroundColor Red
