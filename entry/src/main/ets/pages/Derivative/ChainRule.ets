import router from '@ohos.router';

@Entry
@Component
struct ChainRule {
  build() {
    Column() {
      Row() {
        Button('← 返回')
          .fontSize(14)
          .fontColor('#3F51B5')
          .backgroundColor('#F0F0F0')
          .borderRadius(8)
          .padding({ left: 12, right: 12, top: 6, bottom: 6 })
          .onClick(() => router.back())

        Text('复合函数求导法则')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('复合函数求导—链式法则')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('复合函数就像"套娃",一层套一层。链式法则教你如何"剥洋葱"求导。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 什么是复合函数?')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('如果 y = f(u),u = g(x),那么 y 通过 u 与 x 建立了复合关系:\n\ny = f(g(x))')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('例如: y = sin(2x)\n外层函数: sin(□)\n内层函数: 2x')
            .fontSize(14)
            .lineHeight(22)
            .padding(12)
            .backgroundColor('#FFF9C4')
            .borderRadius(8)

          Text('🔗 链式法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('若 y = f(u), u = g(x),则:\n\ndy/dx = dy/du · du/dx')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('💡 口诀: 外层导数 × 内层导数')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('三步法:\n1️⃣ 识别外层函数和内层函数\n2️⃣ 对外层函数求导(保持内层不变)\n3️⃣ 乘以内层函数的导数')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('📚 基础例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求 y = sin(2x) 的导数\n\n解:\n外层: sin(□), 导数是 cos(□)\n内层: 2x, 导数是 2\n\ny\' = cos(2x) · 2 = 2cos(2x)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 求 y = (x² + 1)⁵ 的导数\n\n解:\n外层: (□)⁵, 导数是 5(□)⁴\n内层: x² + 1, 导数是 2x\n\ny\' = 5(x² + 1)⁴ · 2x\n   = 10x(x² + 1)⁴')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('🔄 多层复合')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('例3: 求 y = sin²(3x) = [sin(3x)]² 的导数\n\n解(从外到内逐层求导):\n最外层: (□)², 导数是 2(□)\n中间层: sin(□), 导数是 cos(□)\n最内层: 3x, 导数是 3\n\ny\' = 2sin(3x) · cos(3x) · 3\n   = 6sin(3x)cos(3x)\n   = 3sin(6x)  [用二倍角公式]')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('🎯 常用复合函数模式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('[f(ax+b)]\' = a·f\'(ax+b)\n\n[f(x²)]\' = 2x·f\'(x²)\n\n[eᵏˣ]\' = k·eᵏˣ\n\n[ln(ax)]\' = a/ax = 1/x\n\n[sin(ωx)]\' = ω·cos(ωx)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('📊 综合例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('例4: 求 y = e^(x²) 的导数\n\n解:\ny\' = e^(x²) · (x²)\'\n   = e^(x²) · 2x\n   = 2x·e^(x²)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('例5: 求 y = ln(cos x) 的导数\n\n解:\ny\' = 1/cos x · (cos x)\'\n   = 1/cos x · (-sin x)\n   = -sin x / cos x\n   = -tan x')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#D7CCC8')
            .borderRadius(8)

          Text('例6: 求 y = √(1 - x²) 的导数\n\n解:\ny = (1 - x²)^(1/2)\ny\' = 1/2 · (1 - x²)^(-1/2) · (-2x)\n   = -x / √(1 - x²)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#BCAAA4')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列复合函数的导数:\n\n1. y = cos(3x)\n\n2. y = (2x + 1)⁴\n\n3. y = e^(-x²)\n\n4. y = ln(x² + 1)\n\n5. y = sin²x\n\n6. y = √(3x - 1)\n\n7. y = 1/(x² + 1)\n\n8. y = e^(sin x)\n\n9. y = tan(2x + 1)\n\n10. y = ln(ln x)')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 链式法则: 外层导数 × 内层导数\n• 识别复合结构是关键\n• 从外到内逐层求导\n• 多层复合连乘所有层的导数\n• 保持内层函数直到最后再代入')
            .fontSize(15)
            .lineHeight(24)
        }
        .width('100%')
        .padding(16)
      }
      .layoutWeight(1)
      .scrollBar(BarState.On)
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  }
}
