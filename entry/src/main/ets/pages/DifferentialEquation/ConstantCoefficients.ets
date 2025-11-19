import router from '@ohos.router';

@Entry
@Component
struct ConstantCoefficients {
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

        Text('常系数线性方程')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('常系数线性微分方程')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('标准形式:\ny\'\' + py\' + qy = f(x)\n\n其中p, q是常数\n\n• f(x)=0: 齐次方程\n• f(x)≠0: 非齐次方程\n\n这是工程中最常用的微分方程类型!')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 特征方程法(核心方法)')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('齐次方程: y\'\' + py\' + qy = 0\n\n解法步骤:\n1️⃣ 写出特征方程: r² + pr + q = 0\n2️⃣ 求特征根r₁, r₂\n3️⃣ 根据特征根类型写通解:\n\n情况1: 两个不等实根r₁≠r₂\n   Y = C₁e^(r₁x) + C₂e^(r₂x)\n\n情况2: 两个相等实根r₁=r₂=r\n   Y = (C₁ + C₂x)e^(rx)\n\n情况3: 共轭复根r₁,₂ = α±βi\n   Y = e^(αx)(C₁cos(βx) + C₂sin(βx))')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📝 例1: 求解 y\'\' - 3y\' + 2y = 0')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n两个不等实根情况\n\n解:\n特征方程: r² - 3r + 2 = 0\n\n因式分解: (r-1)(r-2) = 0\n\nr₁ = 1, r₂ = 2 (两个不等实根)\n\n通解:\nY = C₁e^x + C₂e^(2x)\n\n答案: y = C₁e^x + C₂e^(2x)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('📝 例2: 求解 y\'\' - 4y\' + 4y = 0')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n二重根情况\n\n解:\n特征方程: r² - 4r + 4 = 0\n\n(r-2)² = 0\n\nr₁ = r₂ = 2 (二重根)\n\n通解:\nY = (C₁ + C₂x)e^(2x)\n\n答案: y = (C₁ + C₂x)e^(2x)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('📝 例3: 求解 y\'\' + 2y\' + 5y = 0')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n共轭复根情况\n\n解:\n特征方程: r² + 2r + 5 = 0\n\n求根公式:\nr = (-2 ± √(4-20))/2 = (-2 ± √(-16))/2\n  = (-2 ± 4i)/2 = -1 ± 2i\n\nα = -1, β = 2\n\n通解:\nY = e^(-x)(C₁cos(2x) + C₂sin(2x))\n\n答案: y = e^(-x)(C₁cos(2x) + C₂sin(2x))')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('📌 非齐次方程: 待定系数法')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('非齐次方程: y\'\' + py\' + qy = f(x)\n\n通解 = 齐次通解Y + 特解y*\n\n特解y*的形式(待定系数法):\n\n1️⃣ f(x) = e^(λx)Pₙ(x) 型:\n   y* = x^k·e^(λx)Qₙ(x)\n   k = λ是特征根的重数(0,1,2)\n\n2️⃣ f(x) = e^(λx)[P(x)cos(ωx) + Q(x)sin(ωx)]:\n   y* = x^k·e^(λx)[R(x)cos(ωx) + S(x)sin(ωx)]\n   k = λ+ωi是特征根的重数(0,1)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📝 例4: 求解 y\'\' - 3y\' + 2y = 2x')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\nf(x)=2x, λ=0不是特征根\n\n解:\n1. 齐次通解(例1已求):\n   Y = C₁e^x + C₂e^(2x)\n\n2. 求特解:\n   f(x) = 2x (一次多项式, λ=0)\n   0不是特征根, k=0\n   设 y* = ax + b\n\n   y*\' = a\n   y*\'\' = 0\n\n   代入方程:\n   0 - 3a + 2(ax + b) = 2x\n   2ax + (2b - 3a) = 2x\n\n   对比系数:\n   2a = 2 → a = 1\n   2b - 3a = 0 → b = 3/2\n\n   y* = x + 3/2\n\n3. 通解:\n   y = C₁e^x + C₂e^(2x) + x + 3/2\n\n答案: y = C₁e^x + C₂e^(2x) + x + 3/2')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('📝 例5: 求解 y\'\' + 4y = sin(2x)')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n共轭复根, 2i恰是特征根\n\n解:\n1. 特征方程: r² + 4 = 0\n   r = ±2i\n   Y = C₁cos(2x) + C₂sin(2x)\n\n2. 求特解:\n   f(x) = sin(2x), λ=0, ω=2\n   2i是特征根, k=1\n   设 y* = x(acos(2x) + bsin(2x))\n\n   求导(过程略):\n   y*\' = acos(2x) + bsin(2x) + x(-2asin(2x) + 2bcos(2x))\n   y*\'\' = ...\n\n   代入方程得:\n   a = 0, b = -1/4\n\n   y* = -(x/4)cos(2x)\n\n3. 通解:\n   y = C₁cos(2x) + C₂sin(2x) - (x/4)cos(2x)\n\n答案: y = C₁cos(2x) + C₂sin(2x) - (x/4)cos(2x)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCCBC')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求解 y\'\' + 5y\' + 6y = 0\n提示: 两个不等实根\n\n2. 求解 y\'\' + 4y\' + 4y = 0\n提示: 二重根\n\n3. 求解 y\'\' + 4y = 0\n提示: 纯虚根\n\n4. 求解 y\'\' - y = e^x\n提示: e^x, 1是特征根\n\n5. 求解 y\'\' + y = cos(x)\n提示: i是特征根\n\n6. 求解 y\'\' - 2y\' = x²\n提示: 0是特征根\n\n7. 求解 y\'\' + 2y\' + 2y = e^(-x)sin(x)\n提示: -1+i是特征根\n\n8. 求解 y\'\' + y\' = x+1\n提示: 0是单根')
            .width('100%')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💡 解题技巧')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('解题步骤总结:\n\n1️⃣ 齐次方程:\n   • 写特征方程\n   • 求特征根\n   • 按根的类型写通解\n\n2️⃣ 非齐次方程:\n   • 先求齐次通解Y\n   • 根据f(x)设特解y*\n   • 代入求待定系数\n   • 通解 = Y + y*\n\n判断k值关键:\nk = f(x)中e^(λx)或复数形式\n    在特征根中的重数\n\n常见错误:\n• 忘记检查λ是否为特征根\n• 二重根忘记乘x\n• 复根忘记e^(αx)因子')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#ECEFF1')
            .borderRadius(8)

          Text('💭 小结')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 齐次: 特征方程法\n• 实根: e^(rx)形式\n• 二重根: 乘x因子\n• 复根: e^(αx)(cos+sin)\n• 非齐次: Y + y*\n• 待定系数: 根据f(x)设y*\n• k值: λ的重数')
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
  }
}
