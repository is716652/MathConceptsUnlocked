import router from '@ohos.router';

@Entry
@Component
struct SeparableDE {
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

        Text('可分离变量方程')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('什么是可分离变量方程?')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('能够化成 g(y)dy = f(x)dx 形式的微分方程,称为可分离变量方程。\n\n简单说:就是能把x和y分开,等号两边各自只含一个变量的方程。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 标准形式与解法')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('标准形式:  g(y)dy = f(x)dx\n\n解法步骤:\n1️⃣ 分离变量:把含x的移到一边,含y的移到另一边\n2️⃣ 两边积分: ∫g(y)dy = ∫f(x)dx\n3️⃣ 求出y的表达式(显式或隐式)\n4️⃣ 代入初值条件求常数C')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📝 例1: 求解 dy/dx = 2xy')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n可分离变量的典型例题\n\n解:\n分离变量:\ndy/y = 2x dx\n\n两边积分:\n∫(1/y)dy = ∫2x dx\n\nln|y| = x² + C₁\n\n|y| = e^(x²+C₁) = e^C₁ · e^(x²)\n\ny = ± e^C₁ · e^(x²)\n\n令 C = ± e^C₁,得通解:\ny = Ce^(x²)\n\n答案: y = Ce^(x²)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('📝 例2: 求解 (1+x)dy = y dx, y(0)=1')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n先分离变量,再用初值条件\n\n解:\n分离变量:\ndy/y = dx/(1+x)\n\n两边积分:\n∫(1/y)dy = ∫dx/(1+x)\n\nln|y| = ln|1+x| + C₁\n\n|y| = e^C₁ · |1+x|\n\ny = C(1+x)  (C = ±e^C₁)\n\n代入 y(0)=1:\n1 = C(1+0)\nC = 1\n\n答案: y = 1+x')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('📌 齐次方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('齐次方程: dy/dx = φ(y/x)\n\n特点:右边是 y/x 的函数\n\n解法:\n1️⃣ 令 u = y/x, 则 y = ux\n2️⃣ 求导: dy/dx = u + x(du/dx)\n3️⃣ 代入原方程: u + x(du/dx) = φ(u)\n4️⃣ 分离变量: du/(φ(u)-u) = dx/x\n5️⃣ 积分求解,最后用 y/x 替换 u')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📝 例3: 求解 dy/dx = (y/x) + x/y')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n齐次方程,令u=y/x\n\n解:\ndy/dx = y/x + x/y = (y²+x²)/(xy)\n\n令 u = y/x, 则 y = ux\ndy/dx = u + x(du/dx)\n\n代入:\nu + x(du/dx) = (u²x²+x²)/(ux²) = (u²+1)/u\n\nx(du/dx) = (u²+1)/u - u = (u²+1-u²)/u = 1/u\n\nu du = dx/x\n\n两边积分:\n∫u du = ∫dx/x\n\nu²/2 = ln|x| + C\n\n用 u=y/x 替换:\ny²/(2x²) = ln|x| + C\n\ny² = 2x²ln|x| + 2Cx²\n\n答案: y² = 2x²(ln|x| + C)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('📝 例4: 求解 x dy - y dx = √(x²+y²) dx')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n化为标准形式后用齐次方程解法\n\n解:\nx dy = [y + √(x²+y²)] dx\n\ndy/dx = (y + √(x²+y²))/x = y/x + √(1+(y/x)²)\n\n令 u = y/x, y = ux\ndy/dx = u + x(du/dx)\n\nu + x(du/dx) = u + √(1+u²)\n\nx(du/dx) = √(1+u²)\n\ndu/√(1+u²) = dx/x\n\n两边积分:\n∫du/√(1+u²) = ∫dx/x\n\nln|u + √(1+u²)| = ln|x| + C₁\n\nu + √(1+u²) = Cx\n\n代入 u = y/x:\ny/x + √(1+y²/x²) = Cx\n\ny + √(x²+y²) = Cx²\n\n答案: √(x²+y²) = Cx² - y')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求解 dy/dx = y/x\n提示:可分离变量\n\n2. 求解 dy/dx = e^(x+y)\n提示:e^(x+y) = e^x · e^y\n\n3. 求解 dy/dx = (x-y)/(x+y)\n提示:齐次方程\n\n4. 求解 y·dx = (x+√(xy))dy\n提示:化标准形式\n\n5. 求解 dy/dx = (y²-x²)/(xy), y(1)=2\n提示:齐次方程+初值\n\n6. 求解 (x+y)dx - x·dy = 0\n提示:化为dy/dx形式\n\n7. 求解 xy\' = y + xe^(y/x)\n提示:齐次方程\n\n8. 求解 dy/dx = cos(x+y)\n提示:令u=x+y')
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

          Text('判断方程类型:\n\n1️⃣ 可分离变量:\n   • 能化成 g(y)dy = f(x)dx\n   • 关键:分离x和y\n\n2️⃣ 齐次方程:\n   • dy/dx = φ(y/x)\n   • 右边是y/x的函数\n   • 令u=y/x转化\n\n常见技巧:\n• e^(x+y) = e^x · e^y\n• √(x²+y²) 提x: x√(1+(y/x)²)\n• 积分公式:\n  ∫du/√(1+u²) = ln|u+√(1+u²)|\n  ∫du/(1+u²) = arctan(u)')
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

          Text('• 可分离变量:g(y)dy = f(x)dx\n• 解法:分离+积分\n• 齐次方程:dy/dx = φ(y/x)\n• 齐次解法:令u=y/x\n• 关键:识别类型,正确变换')
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
