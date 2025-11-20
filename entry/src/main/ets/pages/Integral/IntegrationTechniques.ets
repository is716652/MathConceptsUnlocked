import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct IntegrationTechniques {
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

        Text('积分技巧与综合应用')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('积分技巧总结')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('掌握了各种积分方法后,关键是"看到题目就知道用什么方法"。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 积分方法选择流程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('1️⃣ 能否直接用公式?\n2️⃣ 能否简化(化简、拆项)?\n3️⃣ 是否复合函数? → 第一类换元\n4️⃣ 有根号? → 第二类换元\n5️⃣ 两函数相乘? → 分部积分\n6️⃣ 有理函数? → 部分分式\n7️⃣ 三角函数? → 三角变换')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🎯 技巧1—观察化简优先')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('例1: ∫ (x+1)²/x dx\n= ∫ (x² + 2x + 1)/x dx\n= ∫ (x + 2 + 1/x) dx\n= x²/2 + 2x + ln|x| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例2: ∫ (√x + 1)² dx\n= ∫ (x + 2√x + 1) dx\n= x²/2 + (4/3)x^(3/2) + x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('🔄 技巧2—凑微分技巧')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例3: ∫ x/(1+x²)² dx\n= (1/2)∫ 2x/(1+x²)² dx\n= (1/2)∫ 1/(1+x²)² d(1+x²)\n= -(1/2)·1/(1+x²) + C\n= -1/[2(1+x²)] + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例4: ∫ x²/(1+x³) dx\n= (1/3)∫ 3x²/(1+x³) dx\n= (1/3)∫ 1/(1+x³) d(1+x³)\n= (1/3)ln|1+x³| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('💡 技巧3—分部积分选择')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('口诀: 反对幂三指\n\n例5: ∫ x·ln x dx\nu = ln x (对数优先)\ndv = x dx\n\n= (x²/2)ln x - ∫ x²/2·1/x dx\n= (x²/2)ln x - ∫ x/2 dx\n= (x²/2)ln x - x²/4 + C\n= (x²/4)(2ln x - 1) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例6: ∫ x²·e^x dx\n需要两次分部:\n第一次: u = x², dv = e^x dx\n= x²e^x - 2∫ x·e^x dx\n第二次:\n= x²e^x - 2(x-1)e^x + C\n= (x² - 2x + 2)e^x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCCBC')
            .borderRadius(8)

          Text('🎯 技巧4—三角代换')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例7: ∫ √(1-x²) dx\n设 x = sin t\n= ∫ cos t·cos t dt\n= ∫ (1+cos 2t)/2 dt\n= t/2 + sin(2t)/4 + C\n= (1/2)arcsin x + (1/2)x√(1-x²) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('🔍 技巧5—有理化')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('例8: ∫ 1/(1+√x) dx\n设 √x = t\n= ∫ 2t/(1+t) dt\n= 2∫ (1 - 1/(1+t)) dt\n= 2(t - ln|1+t|) + C\n= 2(√x - ln|1+√x|) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('🎯 常见陷阱与注意事项')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('❌ 常见错误:\n\n1. 忘记加常数 C\n2. ln|x| 忘记绝对值\n3. 凑微分时系数错误\n4. 分部积分选错 u 和 dv\n5. 换元后忘记换回\n6. 三角代换时范围错误\n7. 有理函数分解不完整')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('📚 综合练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#E91E63')

          Text('1. ∫ (e^x + 1)² dx\n提示: 展开\n\n2. ∫ x·arctan x dx\n提示: 分部积分\n\n3. ∫ √(x²+1)/x dx\n提示: 有理化或三角代换\n\n4. ∫ 1/(e^x + 1) dx\n提示: 上下乘 e^(-x)\n\n5. ∫ sin x·ln(cos x) dx\n提示: 凑微分\n\n6. ∫ x³/(x²+1)² dx\n提示: 拆项\n\n7. ∫ e^x·cos x dx\n提示: 循环分部积分\n\n8. ∫ (ln x)² dx\n提示: 两次分部积分')
            .width('100%')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💡 综合例题详解')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('例9: ∫ (e^x + 1)² dx\n\n解:\n展开: (e^x + 1)² = e^(2x) + 2e^x + 1\n\n原式 = ∫ (e^(2x) + 2e^x + 1) dx\n    = (1/2)e^(2x) + 2e^x + x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F5F5F5')
            .borderRadius(8)

          Text('例10: ∫ 1/(e^x + 1) dx\n\n解:\n上下乘 e^(-x):\n= ∫ e^(-x)/(1 + e^(-x)) dx\n= -∫ 1/(1 + e^(-x)) d(1 + e^(-x))\n= -ln(1 + e^(-x)) + C\n= ln[e^x/(1+e^x)] + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EEEEEE')
            .borderRadius(8)

          Text('💭 小结')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#455A64')

          Text('• 先化简再积分\n• 识别复合结构用凑微分\n• 两函数相乘用分部\n• 根号用三角或根式代换\n• 有理函数用部分分式\n• 检验方法: 对结果求导\n• 多练习培养题感\n• 一题多解,选最简单的')
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