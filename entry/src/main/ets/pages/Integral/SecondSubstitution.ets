import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct SecondSubstitution {
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

        Text('第二类换元法')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('第二类换元法(变量代换法)')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('第二类换元法: 用新变量 t 替换 x,化简被积函数。与第一类相反,这里是设 x = φ(t)。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 基本原理')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('设 x = φ(t),则 dx = φ\'(t)dt\n\n∫ f(x) dx = ∫ f(φ(t))·φ\'(t) dt\n         = F(t) + C\n         = F(φ⁻¹(x)) + C  [最后换回 x]')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🎯 三种常见代换')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('1️⃣ 三角代换(消根号)\n√(a²-x²) → 设 x = a·sin t\n√(a²+x²) → 设 x = a·tan t\n√(x²-a²) → 设 x = a·sec t\n\n2️⃣ 倒代换\n分母次数高 → 设 x = 1/t\n\n3️⃣ 根式代换\n√x, ∛x 等 → 设 x = tⁿ')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📚 三角代换例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求 ∫ √(1-x²) dx\n\n解:\n设 x = sin t, dx = cos t dt\n√(1-x²) = √(1-sin²t) = cos t\n\n原式 = ∫ cos t · cos t dt\n    = ∫ cos²t dt\n    = ∫ (1+cos 2t)/2 dt\n    = t/2 + sin(2t)/4 + C\n    = t/2 + (sin t·cos t)/2 + C\n    = (1/2)arcsin x + (1/2)x√(1-x²) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 求 ∫ 1/√(x²+1) dx\n\n解:\n设 x = tan t, dx = sec²t dt\n√(x²+1) = √(tan²t+1) = sec t\n\n原式 = ∫ 1/sec t · sec²t dt\n    = ∫ sec t dt\n    = ln|sec t + tan t| + C\n    = ln|√(x²+1) + x| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('例3: 求 ∫ √(x²-4) dx\n\n解:\n设 x = 2sec t, dx = 2sec t·tan t dt\n√(x²-4) = 2tan t\n\n原式 = ∫ 2tan t · 2sec t·tan t dt\n    = 4∫ sec t·tan²t dt\n    = 4∫ sec t(sec²t-1) dt\n    = 4∫ (sec³t - sec t) dt\n    ...(需要用分部积分)\n最终: (x/2)√(x²-4) - 2ln|x+√(x²-4)| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#CE93D8')
            .borderRadius(8)

          Text('📐 根式代换例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('例4: 求 ∫ 1/(x√x) dx\n\n解:\n设 x = t², dx = 2t dt\n√x = t\n\n原式 = ∫ 1/(t²·t) · 2t dt\n    = ∫ 2/t² dt\n    = -2/t + C\n    = -2/√x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例5: 求 ∫ √x/(1+x) dx\n\n解:\n设 x = t², dx = 2t dt\n√x = t\n\n原式 = ∫ t/(1+t²) · 2t dt\n    = 2∫ t²/(1+t²) dt\n    = 2∫ (1 - 1/(1+t²)) dt\n    = 2(t - arctan t) + C\n    = 2(√x - arctan√x) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCCBC')
            .borderRadius(8)

          Text('例6: 求 ∫ 1/(1+∛x) dx\n\n解:\n设 ∛x = t, x = t³, dx = 3t² dt\n\n原式 = ∫ 1/(1+t) · 3t² dt\n    = 3∫ t²/(1+t) dt\n    = 3∫ (t - 1 + 1/(1+t)) dt\n    = 3[t²/2 - t + ln|1+t|] + C\n    = (3/2)∛(x²) - 3∛x + 3ln|1+∛x| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FF9E80')
            .borderRadius(8)

          Text('🔄 倒代换例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例7: 求 ∫ 1/(x²√(1+x²)) dx\n\n解:\n设 x = 1/t, dx = -1/t² dt\n\n原式 = ∫ 1/((1/t²)·√(1+1/t²)) · (-1/t²) dt\n    = -∫ t²/(√(t²+1)) · 1/t² dt\n    = -∫ 1/√(t²+1) dt\n    = -ln|t + √(t²+1)| + C\n    = -ln|1/x + √(1/x²+1)| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('💡 代换选择技巧')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('看到根式选代换:\n\n√(a²-x²) → x = a·sin t\n  理由: 1-sin²t = cos²t\n\n√(a²+x²) → x = a·tan t\n  理由: 1+tan²t = sec²t\n\n√(x²-a²) → x = a·sec t\n  理由: sec²t-1 = tan²t\n\n√x, ∛x → x = tⁿ\n  理由: 化根式为整式')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('📊 综合例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('例8: 求 ∫ 1/(1+√x) dx\n\n解:\n设 √x = t, x = t², dx = 2t dt\n\n原式 = ∫ 1/(1+t) · 2t dt\n    = 2∫ t/(1+t) dt\n    = 2∫ (1 - 1/(1+t)) dt\n    = 2(t - ln|1+t|) + C\n    = 2(√x - ln|1+√x|) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('例9: 求 ∫ x²/√(4-x²) dx\n\n解:\n设 x = 2sin t, dx = 2cos t dt\n√(4-x²) = 2cos t\n\n原式 = ∫ 4sin²t/(2cos t) · 2cos t dt\n    = 4∫ sin²t dt\n    = 4∫ (1-cos 2t)/2 dt\n    = 2t - sin(2t) + C\n    = 2arcsin(x/2) - x√(4-x²)/2 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C5CAE9')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列不定积分:\n\n1. ∫ √(4-x²) dx\n\n2. ∫ 1/√(x²+4) dx\n\n3. ∫ x²√(1-x²) dx\n\n4. ∫ 1/(x+√x) dx\n\n5. ∫ √(x²-1)/x dx\n\n6. ∫ 1/(x²+2x+2) dx (提示: 配方)\n\n7. ∫ x/√(1-x²) dx\n\n8. ∫ ∛x/(1+∛x) dx\n\n9. ∫ 1/(x·√(x²-1)) dx\n\n10. ∫ √((1+x)/(1-x)) dx')
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

          Text('• 第二类换元: 设 x = φ(t)\n• 三角代换消根号(三种模式)\n• 根式代换: √x = t, ∛x = t\n• 倒代换: 分母次数高时用 x = 1/t\n• 代换后别忘了换回原变量\n• 选对代换是关键')
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