import router from '@ohos.router';

@Entry
@Component
struct LinearDE {
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

        Text('一阶线性方程')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('一阶线性微分方程')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('一阶线性方程: y\' + P(x)y = Q(x)\n\n• Q(x)=0: 齐次线性方程\n• Q(x)≠0: 非齐次线性方程\n\n这是微分方程中最重要的类型之一!')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 通解公式(必背!)')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('一阶线性方程 y\' + P(x)y = Q(x) 的通解:\n\ny = e^(-∫Pdx) · [∫Q·e^(∫Pdx)dx + C]\n\n记忆技巧:\n1. 先乘 e的负积分\n2. 括号内: Q乘e的正积分再积分\n3. 加常数C\n\n简写: y = e^(-∫P)[∫Qe^(∫P)dx + C]')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📝 例1: 求解 y\' + y = e^x')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n直接套用通解公式\n\n解:\nP(x) = 1, Q(x) = e^x\n\n∫P(x)dx = ∫1dx = x\n\ny = e^(-x)[∫e^x·e^x dx + C]\n  = e^(-x)[∫e^(2x)dx + C]\n  = e^(-x)[e^(2x)/2 + C]\n  = e^x/2 + Ce^(-x)\n\n验证:\ny\' = e^x/2 - Ce^(-x)\ny\' + y = e^x/2 - Ce^(-x) + e^x/2 + Ce^(-x) = e^x ✓\n\n答案: y = e^x/2 + Ce^(-x)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('📝 例2: 求解 y\' - 2y/x = x², y(1)=1')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n套公式+初值条件\n\n解:\nP(x) = -2/x, Q(x) = x²\n\n∫P(x)dx = ∫(-2/x)dx = -2ln|x| = ln(x^(-2))\n\ny = e^(-ln(x^(-2)))[∫x²·e^(ln(x^(-2)))dx + C]\n  = x²[∫x²·x^(-2)dx + C]\n  = x²[∫1dx + C]\n  = x²[x + C]\n  = x³ + Cx²\n\n代入 y(1)=1:\n1 = 1 + C\nC = 0\n\n答案: y = x³')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('📌 常数变易法')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('推导通解公式的方法:\n\n1️⃣ 先求齐次方程 y\' + P(x)y = 0 的解:\n   y = Ce^(-∫P(x)dx)\n\n2️⃣ 将常数C换成函数u(x):\n   y = u(x)e^(-∫P(x)dx)\n\n3️⃣ 代入原方程求u(x):\n   u\' = Q(x)e^(∫P(x)dx)\n   u = ∫Q(x)e^(∫P(x)dx)dx + C\n\n4️⃣ 得通解')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📝 例3: 求解 xy\' + 2y = x²')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n先化为标准形式\n\n解:\n化为标准形式:\ny\' + (2/x)y = x\n\nP(x) = 2/x, Q(x) = x\n\n∫P(x)dx = 2ln|x| = ln(x²)\n\ny = e^(-ln(x²))[∫x·e^(ln(x²))dx + C]\n  = x^(-2)[∫x·x²dx + C]\n  = x^(-2)[∫x³dx + C]\n  = x^(-2)[x⁴/4 + C]\n  = x²/4 + C/x²\n\n答案: y = x²/4 + C/x²')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('📌 伯努利方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('伯努利方程: y\' + P(x)y = Q(x)y^n (n≠0,1)\n\n解法:\n1. 两边除以 y^n:\n   y^(-n)·y\' + P(x)y^(1-n) = Q(x)\n\n2. 令 z = y^(1-n):\n   z\' = (1-n)y^(-n)·y\'\n\n3. 代入得线性方程:\n   z\'/(1-n) + P(x)z = Q(x)\n   即: z\' + (1-n)P(x)z = (1-n)Q(x)\n\n4. 求出z后, y = z^[1/(1-n)]')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📝 例4: 求解 y\' - y = xy²')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n伯努利方程, n=2\n\n解:\n化为标准形式:\ny\' - y = xy² (n=2)\n\n两边除以 y²:\ny^(-2)·y\' - y^(-1) = x\n\n令 z = y^(-1), 则 z\' = -y^(-2)·y\':\n-z\' - z = x\nz\' + z = -x\n\n这是线性方程:\nP(x)=1, Q(x)=-x\n\nz = e^(-x)[∫(-x)e^x dx + C]\n\n分部积分 ∫xe^x dx = xe^x - e^x:\nz = e^(-x)[-(xe^x - e^x) + C]\n  = e^(-x)[-xe^x + e^x + C]\n  = -x + 1 + Ce^(-x)\n\ny = 1/z = 1/(-x + 1 + Ce^(-x))\n\n答案: y = 1/(1 - x + Ce^(-x))')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求解 y\' + 2y = 4x\n提示: P(x)=2, Q(x)=4x\n\n2. 求解 y\' - y/x = x, y(1)=0\n提示: 注意初值条件\n\n3. 求解 y\' + y·tan(x) = cos(x)\n提示: ∫tan(x)dx = -ln|cos(x)|\n\n4. 求解 (1+x²)y\' + 2xy = 1/(1+x²)\n提示: 先化标准形式\n\n5. 求解 y\' = (y+x²)/x\n提示: 化为 y\' - y/x = x\n\n6. 求解 y\' + y = y²·e^x\n提示: 伯努利方程, n=2\n\n7. 求解 xy\' = 2y + x³·cos(x)\n提示: 化标准形式\n\n8. 求解 y\' - 2y/x = x²y³\n提示: 伯努利方程, n=3')
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

          Text('一阶线性方程解题步骤:\n\n1️⃣ 识别类型:\n   y\' + P(x)y = Q(x) → 线性\n   y\' + P(x)y = Q(x)y^n → 伯努利\n\n2️⃣ 化标准形式:\n   y\'的系数化为1\n\n3️⃣ 套公式/换元:\n   线性 → 通解公式\n   伯努利 → 令z=y^(1-n)\n\n4️⃣ 计算积分:\n   注意积分技巧\n\n5️⃣ 代入初值:\n   确定常数C\n\n常用积分:\n∫1/x dx = ln|x|\n∫tan(x)dx = -ln|cos(x)|\n∫e^(ax) dx = e^(ax)/a')
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

          Text('• 一阶线性: y\' + P(x)y = Q(x)\n• 通解公式: y = e^(-∫P)[∫Qe^(∫P)dx + C]\n• 常数变易法: C→u(x)\n• 伯努利方程: y\' + Py = Qy^n\n• 伯努利解法: 令z=y^(1-n)\n• 关键: 熟记公式,准确计算')
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
