import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct BasicIntegralFormulas {
  build() {
    Stack() {
      Column() {
      Row() {
        Button('← 返回')
          .fontSize(14)
          .fontColor('#3F51B5')
          .backgroundColor('#F0F0F0')
          .borderRadius(8)
          .padding({ left: 12, right: 12, top: 6, bottom: 6 })
          .onClick(() => router.back())

        Text('基本积分公式')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('基本积分公式表')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('这些公式是积分计算的基础,必须熟练掌握!与基本求导公式一一对应。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 幂函数积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('∫ xⁿ dx = xⁿ⁺¹/(n+1) + C  (n ≠ -1)\n\n特别地:\n∫ 1 dx = x + C\n∫ x dx = x²/2 + C\n∫ x² dx = x³/3 + C\n∫ x³ dx = x⁴/4 + C\n∫ √x dx = (2/3)x^(3/2) + C\n∫ 1/√x dx = 2√x + C\n\n记忆: 指数加1,除以新指数')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📐 特殊幂函数')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('∫ 1/x dx = ln|x| + C  (重要!)\n\n∫ 1/x² dx = -1/x + C\n\n∫ 1/x³ dx = -1/(2x²) + C\n\n∫ 1/√x dx = 2√x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📊 指数函数积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('∫ eˣ dx = eˣ + C\n\n∫ aˣ dx = aˣ/ln a + C  (a>0, a≠1)\n\n特别地:\n∫ 2ˣ dx = 2ˣ/ln 2 + C\n∫ 10ˣ dx = 10ˣ/ln 10 + C\n∫ e⁻ˣ dx = -e⁻ˣ + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('🔄 三角函数积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('∫ sin x dx = -cos x + C\n\n∫ cos x dx = sin x + C\n\n∫ sec²x dx = tan x + C\n\n∫ csc²x dx = -cot x + C\n\n∫ sec x·tan x dx = sec x + C\n\n∫ csc x·cot x dx = -csc x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('💡 记忆技巧—三角函数')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('• sin 积分变 -cos(负号别忘)\n• cos 积分变 sin(正号)\n• sec² 积分是 tan\n• csc² 积分是 -cot(负号)\n• 导数带负号的,积分也带负号')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('🎯 反三角函数积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('∫ 1/√(1-x²) dx = arcsin x + C\n\n∫ -1/√(1-x²) dx = arccos x + C\n\n∫ 1/(1+x²) dx = arctan x + C\n\n∫ -1/(1+x²) dx = arccot x + C\n\n∫ 1/(x√(x²-1)) dx = arcsec x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('⚡ 重要变形公式')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('∫ tan x dx = -ln|cos x| + C\n           = ln|sec x| + C\n\n∫ cot x dx = ln|sin x| + C\n\n∫ sec x dx = ln|sec x + tan x| + C\n\n∫ csc x dx = ln|csc x - cot x| + C\n            = -ln|csc x + cot x| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('📚 公式应用例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#E91E63')

          Text('例1: 求 ∫ (x³ + 2x - 5) dx\n\n解:\n∫ (x³ + 2x - 5) dx\n= ∫ x³ dx + 2∫ x dx - 5∫ 1 dx\n= x⁴/4 + 2·x²/2 - 5x + C\n= x⁴/4 + x² - 5x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FCE4EC')
            .borderRadius(8)

          Text('例2: 求 ∫ (3eˣ - 2/x + sin x) dx\n\n解:\n∫ (3eˣ - 2/x + sin x) dx\n= 3∫ eˣ dx - 2∫ 1/x dx + ∫ sin x dx\n= 3eˣ - 2ln|x| - cos x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F8BBD0')
            .borderRadius(8)

          Text('例3: 求 ∫ (1 + x)² dx\n\n解法1(展开后积分):\n∫ (1 + 2x + x²) dx\n= x + x² + x³/3 + C\n\n解法2(凑微分):\n设 u = 1 + x, 则 du = dx\n∫ u² du = u³/3 + C\n= (1+x)³/3 + C\n\n验证: 两个答案相差常数,都对!')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F48FB1')
            .borderRadius(8)

          Text('例4: 求 ∫ (cos x - sec²x) dx\n\n解:\n∫ (cos x - sec²x) dx\n= ∫ cos x dx - ∫ sec²x dx\n= sin x - tan x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EC407A')
            .fontColor('#FFFFFF')
            .borderRadius(8)

          Text('例5: 求 ∫ (√x + 1/√x) dx\n\n解:\n= ∫ x^(1/2) dx + ∫ x^(-1/2) dx\n= (2/3)x^(3/2) + 2x^(1/2) + C\n= (2/3)x√x + 2√x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C2185B')
            .fontColor('#FFFFFF')
            .borderRadius(8)

          Text('例6: 求 ∫ (2ˣ + 3ˣ) dx\n\n解:\n= ∫ 2ˣ dx + ∫ 3ˣ dx\n= 2ˣ/ln 2 + 3ˣ/ln 3 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#880E4F')
            .fontColor('#FFFFFF')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列不定积分:\n\n1. ∫ (x⁴ - 3x² + 2) dx\n\n2. ∫ (√x + 1/x²) dx\n\n3. ∫ (eˣ + 2ˣ) dx\n\n4. ∫ (sin x + cos x) dx\n\n5. ∫ (1/(1+x²) + 1/√(1-x²)) dx\n\n6. ∫ (sec²x + csc²x) dx\n\n7. ∫ 1/(x√x) dx (提示: 化为幂函数)\n\n8. ∫ (x-1)² dx\n\n9. ∫ (3/x - 2sin x) dx\n\n10. ∫ (eˣ - e⁻ˣ)/2 dx')
            .width('100%')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 基本公式必须背熟\n• xⁿ积分: 指数加1除以新指数\n• 1/x 特殊: 积分是 ln|x|\n• eˣ积分还是 eˣ\n• sin→-cos, cos→sin\n• 线性运算: 可拆可提常数\n• 检验方法: 对结果求导看是否等于被积函数')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
        }
        .width('100%')
        .padding(16)
        .alignItems(HorizontalAlign.Start)
      }
      .layoutWeight(1)
      .scrollBar(BarState.On)
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  
      // 悠悠浮动按钮
      YouyouFloatingButton()
    }
  }
}