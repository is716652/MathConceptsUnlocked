import router from '@ohos.router';

@Entry
@Component
struct BasicFormulas {
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

        Text('基本求导公式')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('基本初等函数求导公式')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('这些公式是求导的基础,务必牢记!')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 常数和幂函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('(C)\' = 0  (常数的导数为0)\n\n(xⁿ)\' = n·xⁿ⁻¹  (幂函数求导法则)\n\n(√x)\' = 1/(2√x)\n\n(1/x)\' = -1/x²')
            .fontSize(15)
            .lineHeight(26)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📐 三角函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('(sin x)\' = cos x\n\n(cos x)\' = -sin x\n\n(tan x)\' = sec²x = 1/cos²x\n\n(cot x)\' = -csc²x = -1/sin²x\n\n(sec x)\' = sec x · tan x\n\n(csc x)\' = -csc x · cot x')
            .fontSize(15)
            .lineHeight(26)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📊 指数和对数函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('(eˣ)\' = eˣ  (自然指数函数导数是自己)\n\n(aˣ)\' = aˣ · ln a\n\n(ln x)\' = 1/x\n\n(logₐ x)\' = 1/(x · ln a)')
            .fontSize(15)
            .lineHeight(26)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('🔄 反三角函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('(arcsin x)\' = 1/√(1-x²)\n\n(arccos x)\' = -1/√(1-x²)\n\n(arctan x)\' = 1/(1+x²)\n\n(arccot x)\' = -1/(1+x²)')
            .fontSize(15)
            .lineHeight(26)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('💡 记忆技巧')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('1️⃣ 幂函数: "指数降一次,乘以原指数"\n   x³ → 3x²\n\n2️⃣ 三角函数: "正变余,余变负正"\n   sin → cos, cos → -sin\n\n3️⃣ eˣ 最特殊: 导数还是自己\n\n4️⃣ ln x: 导数是 1/x (倒数)')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('📚 实例演练')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('例1: 求 y = x⁵ 的导数\n解: y\' = 5x⁴\n\n例2: 求 y = 1/x³ = x⁻³ 的导数\n解: y\' = -3x⁻⁴ = -3/x⁴\n\n例3: 求 y = 3eˣ + 2sin x 的导数\n解: y\' = 3eˣ + 2cos x')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列函数的导数:\n\n1. y = x⁷\n\n2. y = 1/x² + √x\n\n3. y = 5eˣ - 3ln x\n\n4. y = sin x + cos x\n\n5. y = tan x - cot x\n\n6. y = 2ˣ + log₂ x\n\n7. y = arcsin x + arctan x\n\n8. y = x⁴ - 3x² + 5x - 7')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 基本公式必须背熟\n• 注意正负号(cos x, arccos x 导数为负)\n• 幂函数记住"降一乘原"\n• 常用公式: eˣ导数是自己, ln x导数是1/x')
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
