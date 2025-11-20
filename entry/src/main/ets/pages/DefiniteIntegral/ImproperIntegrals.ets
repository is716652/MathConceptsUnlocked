import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct ImproperIntegrals {
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

        Text('反常积分')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('反常积分')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('定积分要求:积分区间有限,被积函数有界。\n当这两个条件不满足时,就是反常积分(广义积分)。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 两类反常积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('第一类:无穷区间上的积分\n• ∫ₐ^(+∞) f(x) dx\n• ∫₋∞ᵇ f(x) dx\n• ∫₋∞^(+∞) f(x) dx\n\n第二类:无界函数的积分(瑕积分)\n• 被积函数在积分区间内无界')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📌 第一类:无穷限反常积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('定义:\n∫ₐ^(+∞) f(x) dx = lim(t→+∞) ∫ₐᵗ f(x) dx\n\n如果极限存在,称反常积分收敛\n如果极限不存在,称反常积分发散')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例1: 计算 ∫₁^(+∞) (1/x²) dx\n\n解:\n∫₁^(+∞) (1/x²) dx\n= lim(t→+∞) ∫₁ᵗ (1/x²) dx\n= lim(t→+∞) [-1/x]₁ᵗ\n= lim(t→+∞) (-1/t + 1)\n= 0 + 1 = 1\n\n收敛,积分值为 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('例2: 计算 ∫₁^(+∞) (1/x) dx\n\n解:\n∫₁^(+∞) (1/x) dx\n= lim(t→+∞) ∫₁ᵗ (1/x) dx\n= lim(t→+∞) [ln x]₁ᵗ\n= lim(t→+∞) (ln t - ln 1)\n= lim(t→+∞) ln t = +∞\n\n发散!')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('💡 重要结论:p-积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('∫₁^(+∞) (1/xᵖ) dx:\n\n• p > 1 时,收敛\n• p ≤ 1 时,发散\n\n特别地:\np=2: 收敛(∫=1)\np=1: 发散(ln ∞)\np=1/2: 发散(√∞)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例3: 计算 ∫₀^(+∞) e^(-x) dx\n\n解:\n∫₀^(+∞) e^(-x) dx\n= lim(t→+∞) ∫₀ᵗ e^(-x) dx\n= lim(t→+∞) [-e^(-x)]₀ᵗ\n= lim(t→+∞) (-e^(-t) + 1)\n= 0 + 1 = 1\n\n收敛,积分值为 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('📌 第二类:无界函数的反常积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('定义:若 f(x) 在 x=a 处无界,则\n∫ₐᵇ f(x) dx = lim(ε→0⁺) ∫ₐ₊ₑᵇ f(x) dx\n\nx=a 称为瑕点(奇点)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例4: 计算 ∫₀¹ (1/√x) dx\n\n分析:x=0 时,1/√x → ∞,所以 x=0 是瑕点\n\n解:\n∫₀¹ (1/√x) dx\n= lim(ε→0⁺) ∫ₑ¹ x^(-1/2) dx\n= lim(ε→0⁺) [2√x]ₑ¹\n= lim(ε→0⁺) (2 - 2√ε)\n= 2 - 0 = 2\n\n收敛,积分值为 2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('例5: 计算 ∫₀¹ (1/x²) dx\n\n分析:x=0 是瑕点\n\n解:\n∫₀¹ (1/x²) dx\n= lim(ε→0⁺) ∫ₑ¹ x^(-2) dx\n= lim(ε→0⁺) [-1/x]ₑ¹\n= lim(ε→0⁺) (-1 + 1/ε)\n= +∞\n\n发散!')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EF9A9A')
            .borderRadius(8)

          Text('💡 瑕积分的 p-判别法')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('∫ₐᵇ 1/(x-a)ᵖ dx (x=a 是瑕点):\n\n• p < 1 时,收敛\n• p ≥ 1 时,发散\n\n与无穷限相反!\n\n例如:\np=1/2: 收敛 (例4)\np=2: 发散 (例5)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('🎯 综合应用')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('例6: 计算 ∫₋∞^(+∞) dx/(1+x²)\n\n解:拆成两部分\n∫₋∞^(+∞) = ∫₋∞⁰ + ∫₀^(+∞)\n\n∫₀^(+∞) dx/(1+x²)\n= lim(t→+∞) [arctan x]₀ᵗ\n= lim(t→+∞) (arctan t - 0)\n= π/2\n\n由对称性:\n∫₋∞⁰ dx/(1+x²) = π/2\n\n所以 ∫₋∞^(+∞) dx/(1+x²) = π')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 判断 ∫₁^(+∞) (1/x³) dx 的敛散性\n\n2. 计算 ∫₂^(+∞) (1/x²) dx\n\n3. 判断 ∫₀¹ (1/x) dx 的敛散性\n\n4. 计算 ∫₀¹ dx/√(1-x)\n\n5. 判断 ∫₁^(+∞) (1/√x) dx 的敛散性\n\n6. 计算 ∫₀^(+∞) xe^(-x) dx\n\n7. 判断 ∫₀¹ ln x dx 是否收敛\n\n8. 计算 ∫₀^(π/2) dx/√(sin x)')
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

          Text('• 反常积分 = 广义积分\n• 第一类:无穷区间 (∫ₐ^∞)\n• 第二类:无界函数 (瑕积分)\n• 收敛 = 极限存在且有限\n• 发散 = 极限不存在或无穷\n• p-积分判别法很重要\n• 无穷限: p>1收敛\n• 瑕积分: p<1收敛')
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