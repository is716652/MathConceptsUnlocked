import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct FirstSubstitution {
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

        Text('第一类换元法')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('第一类换元法(凑微分法)')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('第一类换元法的核心思想: 把复杂的积分凑成 ∫ f(u) du 的形式,其中 u = φ(x)。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 基本原理')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('如果 ∫ f(u) du = F(u) + C,那么:\n\n∫ f(φ(x))·φ\'(x) dx = F(φ(x)) + C\n\n或写成微分形式:\n∫ f(u) du = F(u) + C\n其中 u = φ(x), du = φ\'(x)dx')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('💡 凑微分的技巧')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('关键: 找到被积函数中的"复合结构",把 dx 凑成 d(某个表达式)\n\n常用凑微分公式:\n• x dx = (1/2) d(x²)\n• sin x dx = -d(cos x)\n• cos x dx = d(sin x)\n• 1/x dx = d(ln|x|)\n• eˣ dx = d(eˣ)\n• (ax+b) dx = (1/a) d(ax+b)\n• 2x dx = d(x²)\n• 3x² dx = d(x³)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📚 基础例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求 ∫ 2x·e^(x²) dx\n\n解:\n观察: e^(x²) 是复合函数,需要 d(x²) = 2x dx\n\n∫ 2x·e^(x²) dx\n= ∫ e^(x²) · 2x dx\n= ∫ e^(x²) d(x²)  [凑微分]\n= e^(x²) + C\n\n检验: d/dx[e^(x²)] = e^(x²)·2x ✓')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 求 ∫ cos(2x) dx\n\n解:\n需要凑出 d(2x) = 2dx\n\n∫ cos(2x) dx\n= (1/2)∫ cos(2x) · 2dx\n= (1/2)∫ cos(2x) d(2x)\n= (1/2) sin(2x) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('例3: 求 ∫ x/(x²+1) dx\n\n解:\n观察: 分母 x²+1,其导数 2x 与分子 x 相关\n\n∫ x/(x²+1) dx\n= (1/2)∫ 2x/(x²+1) dx\n= (1/2)∫ 1/(x²+1) d(x²+1)\n= (1/2) ln|x²+1| + C\n= (1/2) ln(x²+1) + C  [x²+1>0]')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#CE93D8')
            .borderRadius(8)

          Text('🎯 常见凑微分模式')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('模式1: ∫ f(ax+b) dx = (1/a)F(ax+b) + C\n例: ∫ sin(3x) dx = -(1/3)cos(3x) + C\n\n模式2: ∫ x·f(x²) dx = (1/2)F(x²) + C\n例: ∫ x·sin(x²) dx = -(1/2)cos(x²) + C\n\n模式3: ∫ f\'(x)/f(x) dx = ln|f(x)| + C\n例: ∫ 2x/(x²+1) dx = ln(x²+1) + C\n\n模式4: ∫ f\'(x)·[f(x)]ⁿ dx = [f(x)]ⁿ⁺¹/(n+1) + C\n例: ∫ 2x(x²+1)³ dx = (x²+1)⁴/4 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('📊 进阶例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例4: 求 ∫ tan x dx\n\n解:\ntan x = sin x / cos x\n\n∫ tan x dx\n= ∫ sin x / cos x dx\n= -∫ 1/cos x · (-sin x) dx\n= -∫ 1/cos x d(cos x)\n= -ln|cos x| + C\n= ln|sec x| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例5: 求 ∫ e^(2x+1) dx\n\n解:\n∫ e^(2x+1) dx\n= (1/2)∫ e^(2x+1) · 2 dx\n= (1/2)∫ e^(2x+1) d(2x+1)\n= (1/2) e^(2x+1) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('例6: 求 ∫ x√(x²+1) dx\n\n解:\n∫ x√(x²+1) dx\n= (1/2)∫ √(x²+1) · 2x dx\n= (1/2)∫ √(x²+1) d(x²+1)\n= (1/2)·(2/3)(x²+1)^(3/2) + C\n= (1/3)(x²+1)^(3/2) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#80CBC4')
            .borderRadius(8)

          Text('例7: 求 ∫ 1/(2x+3) dx\n\n解:\n∫ 1/(2x+3) dx\n= (1/2)∫ 1/(2x+3) · 2 dx\n= (1/2)∫ 1/(2x+3) d(2x+3)\n= (1/2) ln|2x+3| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#4DB6AC')
            .borderRadius(8)

          Text('例8: 求 ∫ sin³x·cos x dx\n\n解:\n∫ sin³x·cos x dx\n= ∫ sin³x d(sin x)\n= sin⁴x/4 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#26A69A')
            .borderRadius(8)

          Text('💭 解题步骤总结')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('1️⃣ 观察被积函数,找复合结构\n2️⃣ 确定内层函数 u = φ(x)\n3️⃣ 凑出 du = φ\'(x)dx (添加系数)\n4️⃣ 代入公式 ∫ f(u) du\n5️⃣ 积分后把 u 换回 x\n6️⃣ 求导检验结果')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列不定积分:\n\n1. ∫ sin(5x) dx\n\n2. ∫ e^(-3x) dx\n\n3. ∫ x·e^(x²) dx\n\n4. ∫ cos x·sin x dx\n\n5. ∫ x/(x²-1) dx\n\n6. ∫ 1/(3x+2) dx\n\n7. ∫ x²√(x³+1) dx\n\n8. ∫ tan(x/2) dx\n\n9. ∫ x/(1+x²)² dx\n\n10. ∫ e^x/(1+e^x) dx')
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

          Text('• 第一类换元 = 凑微分\n• 核心: ∫ f(φ(x))φ\'(x)dx = ∫ f(u)du\n• 观察复合结构,凑出内层函数的微分\n• 常用: ax+b, x², sin x, cos x, eˣ\n• 技巧: 添加或提取常数系数\n• 分式型常凑成 f\'(x)/f(x) = d[ln f(x)]')
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