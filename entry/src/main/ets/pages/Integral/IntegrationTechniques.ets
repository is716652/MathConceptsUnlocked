import router from '@ohos.router';

@Entry
@Component
struct IntegrationTechniques {
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
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('掌握了各种积分方法后,关键是"看到题目就知道用什么方法"。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 积分方法选择流程')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('1️⃣ 能否直接用公式?\n2️⃣ 能否简化(化简、拆项)?\n3️⃣ 是否复合函数? → 第一类换元\n4️⃣ 有根号? → 第二类换元\n5️⃣ 两函数相乘? → 分部积分\n6️⃣ 有理函数? → 部分分式\n7️⃣ 三角函数? → 三角变换')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🎯 技巧1—观察化简优先')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('例1: ∫ (x+1)²/x dx\n= ∫ (x + 2 + 1/x) dx\n= x²/2 + 2x + ln|x| + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('🔄 技巧2—凑微分技巧')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例2: ∫ x/(1+x²)² dx\n= (1/2)∫ 2x/(1+x²)² dx\n= (1/2)∫ 1/(1+x²)² d(1+x²)\n= -(1/2)·1/(1+x²) + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('💡 技巧3—分部积分选择')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('口诀: 反对幂三指\n\n例3: ∫ x·ln x dx\nu = ln x (对数优先)\ndv = x dx\n= (x²/2)ln x - ∫ x²/2·1/x dx\n= (x²/2)ln x - x²/4 + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('🎯 常见陷阱与注意事项')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('❌ 常见错误:\n\n1. 忘记加常数 C\n2. ln|x| 忘记绝对值\n3. 凑微分时系数错误\n4. 分部积分选错 u 和 dv\n5. 换元后忘记换回')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('📚 综合练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('1. ∫ (e^x + 1)² dx\n2. ∫ x·arctan x dx\n3. ∫ √(x²+1)/x dx\n4. ∫ 1/(e^x + 1) dx\n5. ∫ sin x·ln(cos x) dx\n6. ∫ x³/(x²+1)² dx\n7. ∫ e^x·cos x dx\n8. ∫ (ln x)² dx')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 先化简再积分\n• 识别复合结构用凑微分\n• 两函数相乘用分部\n• 根号用三角或根式代换\n• 有理函数用部分分式\n• 检验方法: 对结果求导')
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
