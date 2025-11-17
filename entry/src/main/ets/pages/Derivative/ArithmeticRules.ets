import router from '@ohos.router';

@Entry
@Component
struct ArithmeticRules {
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

        Text('四则运算求导法则')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('导数的四则运算法则')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('有了基本公式,还需要会组合运算。这就像学会了加减乘除后,还要学会先乘除后加减的顺序。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 加减法法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('[u(x) ± v(x)]\' = u\'(x) ± v\'(x)')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#E91E63')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('💡 通俗理解: 分别求导,再相加减')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('例: (x² + sin x)\' = (x²)\' + (sin x)\' = 2x + cos x')
            .fontSize(14)
            .lineHeight(22)
            .padding(12)
            .backgroundColor('#FFF9C4')
            .borderRadius(8)

          Text('📐 常数倍法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('[C · u(x)]\' = C · u\'(x)')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('💡 常数可以提到外面')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('例: (5x³)\' = 5 · (x³)\' = 5 · 3x² = 15x²')
            .fontSize(14)
            .lineHeight(22)
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('✖️ 乘法法则(乘积法则)')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('[u(x) · v(x)]\' = u\'(x)·v(x) + u(x)·v\'(x)')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('💡 口诀: 前导后不导 + 前不导后导')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('例: (x² · sin x)\'\n= (x²)\' · sin x + x² · (sin x)\'\n= 2x · sin x + x² · cos x')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('➗ 除法法则(商法则)')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('[u(x)/v(x)]\' = [u\'(x)·v(x) - u(x)·v\'(x)] / [v(x)]²')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('💡 口诀: 上导下不导减上不导下导,全部除以下平方')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('例: (x²/eˣ)\'\n= [(x²)\' · eˣ - x² · (eˣ)\'] / (eˣ)²\n= [2x · eˣ - x² · eˣ] / e²ˣ\n= (2x - x²) / eˣ')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCCBC')
            .borderRadius(8)

          Text('📚 综合例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例1: 求 y = 3x⁴ - 2x² + 5x - 7 的导数\n\n解:\ny\' = 3·4x³ - 2·2x + 5 - 0\n   = 12x³ - 4x + 5')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例2: 求 y = x·eˣ 的导数\n\n解(用乘法法则):\ny\' = (x)\' · eˣ + x · (eˣ)\'\n   = 1 · eˣ + x · eˣ\n   = (1 + x)eˣ')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('例3: 求 y = sin x / x 的导数\n\n解(用除法法则):\ny\' = [(sin x)\' · x - sin x · (x)\'] / x²\n   = [cos x · x - sin x · 1] / x²\n   = (x·cos x - sin x) / x²')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#80CBC4')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列函数的导数:\n\n1. y = 5x³ - 3x² + 2x - 1\n\n2. y = x² · cos x\n\n3. y = eˣ · sin x\n\n4. y = (x² + 1) / x\n\n5. y = tan x (提示: tan x = sin x / cos x)\n\n6. y = x · ln x\n\n7. y = (2x + 1)(3x - 2)\n\n8. y = (x² - 1) / (x² + 1)')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 加减法: 分别求导\n• 常数倍: 提到外面\n• 乘法: 前导后不导 + 前不导后导\n• 除法: (上导下不导 - 上不导下导) / 下²\n• 组合运用这些法则可以求任意复杂函数的导数')
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
