import router from '@ohos.router';

@Entry
@Component
struct RationalFunctions {
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

        Text('有理函数积分')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('有理函数积分')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('有理函数是两个多项式的商,形如 P(x)/Q(x)。掌握有理函数积分,其他复杂积分都能化归为此。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 有理函数的定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('有理函数的形式:\nR(x) = P(x)/Q(x)\n\n其中 P(x), Q(x) 都是多项式\n\n例如:\n• (x²+1)/(x³-x)\n• (2x+3)/(x²+4x+5)\n• 1/(x²-1)')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🔍 积分步骤')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('Step 1: 化为真分式\n若分子次数 ≥ 分母次数,先做多项式除法\n\nStep 2: 分母因式分解\nQ(x) 分解为一次和二次因式的乘积\n\nStep 3: 部分分式展开\n拆成简单分式的和\n\nStep 4: 逐项积分\n用基本公式积分')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📚 最简单情况—拆分法')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求 ∫ 1/(x²-1) dx\n\n解:\n因式分解: x²-1 = (x-1)(x+1)\n\n部分分式: 1/(x²-1) = A/(x-1) + B/(x+1)\n\n求系数:\n1 = A(x+1) + B(x-1)\n令 x=1: 1 = 2A → A = 1/2\n令 x=-1: 1 = -2B → B = -1/2\n\n所以:\n∫ 1/(x²-1) dx\n= (1/2)∫ 1/(x-1) dx - (1/2)∫ 1/(x+1) dx\n= (1/2)ln|x-1| - (1/2)ln|x+1| + C\n= (1/2)ln|x-1|/|x+1| + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 求 ∫ (2x+1)/(x²+3x+2) dx\n\n解:\n分解: x²+3x+2 = (x+1)(x+2)\n\n设 (2x+1)/[(x+1)(x+2)] = A/(x+1) + B/(x+2)\n\n2x+1 = A(x+2) + B(x+1)\n令 x=-1: -1 = A → A = -1\n令 x=-2: -3 = -B → B = 3\n\n原式 = -∫ 1/(x+1) dx + 3∫ 1/(x+2) dx\n    = -ln|x+1| + 3ln|x+2| + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('🎯 假分式化真分式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('例3: 求 ∫ (x³+1)/(x²-1) dx\n\n解:\n多项式除法:\nx³+1 = (x²-1)·x + (x+1)\n\n所以:\n(x³+1)/(x²-1) = x + (x+1)/(x²-1)\n\n原式 = ∫ x dx + ∫ (x+1)/(x²-1) dx\n    = x²/2 + ∫ (x+1)/[(x-1)(x+1)] dx\n    = x²/2 + ∫ 1/(x-1) dx\n    = x²/2 + ln|x-1| + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('📐 含二次因式的情况')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例4: 求 ∫ 1/(x³+x) dx\n\n解:\n分解: x³+x = x(x²+1)\n\n设 1/[x(x²+1)] = A/x + (Bx+C)/(x²+1)\n\n1 = A(x²+1) + (Bx+C)x\n1 = (A+B)x² + Cx + A\n\n比较系数:\nA = 1\nC = 0\nA + B = 0 → B = -1\n\n原式 = ∫ 1/x dx - ∫ x/(x²+1) dx\n    = ln|x| - (1/2)ln(x²+1) + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例5: 求 ∫ x/(x²+2x+2) dx\n\n解:\n配方: x²+2x+2 = (x+1)²+1\n\n凑微分:\nx = (x+1) - 1\n\n原式 = ∫ (x+1)/[(x+1)²+1] dx - ∫ 1/[(x+1)²+1] dx\n    = (1/2)ln[(x+1)²+1] - arctan(x+1) + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('💡 部分分式拆分规则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('1️⃣ 一次因式 (x-a):\n   对应项: A/(x-a)\n\n2️⃣ 重复一次因式 (x-a)ⁿ:\n   对应项: A₁/(x-a) + A₂/(x-a)² + ... + Aₙ/(x-a)ⁿ\n\n3️⃣ 二次因式 (x²+px+q):\n   对应项: (Ax+B)/(x²+px+q)\n\n4️⃣ 重复二次因式 (x²+px+q)ⁿ:\n   对应项类似重复一次因式')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列不定积分:\n\n1. ∫ 1/(x²-4) dx\n\n2. ∫ 1/(x²+x) dx\n\n3. ∫ (x+1)/(x²-3x+2) dx\n\n4. ∫ x²/(x²-1) dx\n\n5. ∫ 1/(x³-x) dx\n\n6. ∫ (2x-1)/(x²+1) dx\n\n7. ∫ x/(x²+4x+5) dx\n\n8. ∫ 1/[(x+1)(x²+1)] dx\n\n9. ∫ (x²+1)/(x³-x) dx\n\n10. ∫ 1/(x⁴-1) dx')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 有理函数 = P(x)/Q(x)\n• 假分式先化真分式(多项式除法)\n• 分母因式分解\n• 部分分式展开(待定系数法)\n• 一次因式对应 A/(x-a)\n• 二次因式对应 (Ax+B)/(x²+px+q)\n• 所有有理函数积分都能化为初等函数')
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
