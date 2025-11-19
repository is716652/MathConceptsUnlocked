import router from '@ohos.router';

@Entry
@Component
struct DEExercises {
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

        Text('综合练习')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('微分方程综合练习')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('本章涵盖所有微分方程类型的练习题, 按难度分类, 每题都有提示和解题思路。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📝 一、可分离变量方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('1. 求解 dy/dx = xy\n提示: 分离变量\n思路: dy/y = x dx, 两边积分\n答案: y = Ce^(x²/2)\n\n2. 求解 (1+y²)dx = (1+x²)dy\n提示: 标准可分离形式\n思路: dx/(1+x²) = dy/(1+y²)\n答案: arctan(x) = arctan(y) + C\n\n3. 求解 dy/dx = e^(x-y)\n提示: e^(x-y) = e^x/e^y\n思路: e^y dy = e^x dx\n答案: e^y = e^x + C\n\n4. 求解 y\' = (1-2x)/y, y(0)=1\n提示: 可分离+初值\n思路: y dy = (1-2x)dx, 求C\n答案: y² = 2x - 2x² + 1')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📝 二、齐次方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('5. 求解 dy/dx = (x+y)/x\n提示: 齐次方程\n思路: 令u=y/x, y=ux, dy/dx=u+x(du/dx)\n答案: y = x(ln|x| + C)\n\n6. 求解 x dy - y dx = √(x²+y²) dx\n提示: 化标准形式后用齐次\n思路: dy/dx = (y+√(x²+y²))/x\n答案: √(x²+y²) = Cx² - y\n\n7. 求解 (x²+y²)dx - 2xy dy = 0\n提示: 齐次方程\n思路: dy/dx = (x²+y²)/(2xy)\n答案: x²-y² = Cx')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📝 三、一阶线性方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('8. 求解 y\' + 2xy = 2x\n提示: 线性方程公式\n思路: P(x)=2x, Q(x)=2x\n答案: y = 1 + Ce^(-x²)\n\n9. 求解 xy\' - y = x², y(1)=1\n提示: 化标准形式\n思路: y\' - y/x = x\n答案: y = x²/2 + x/2\n\n10. 求解 y\' + y/x = sin(x)/x\n提示: 通解公式\n思路: P(x)=1/x, ∫Pdx=ln|x|\n答案: y = (1/x)(C - cos(x))\n\n11. 求解 y\' - 2y = e^(3x)\n提示: 常系数\n思路: P=-2, Q=e^(3x)\n答案: y = e^(3x) + Ce^(2x)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📝 四、伯努利方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('12. 求解 y\' + y = y²\n提示: 伯努利, n=2\n思路: 令z=y^(-1)\n答案: y = 1/(Ce^(-x) - 1)\n\n13. 求解 xy\' + y = xy³\n提示: 伯努利, n=3\n思路: 化标准形式, 令z=y^(-2)\n答案: y² = 1/(C - x²)\n\n14. 求解 y\' - y/x = y³/x\n提示: 伯努利\n思路: n=3, z=y^(-2)\n答案: y² = x/(C - x)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFE0B2')
            .borderRadius(8)

          Text('📝 五、可降阶高阶方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#00BCD4')

          Text('15. 求解 y\'\' = x + sin(x)\n提示: 不含y, 连续积分\n答案: y = x³/6 - sin(x) + C₁x + C₂\n\n16. 求解 y\'\' + (y\')² = 0\n提示: 不含y, 令p=y\'\n思路: p\' + p² = 0\n答案: y = C₁x + C₂ 或 y = -ln|x+C₁| + C₂\n\n17. 求解 y·y\'\' = 1\n提示: 不含x, p·dp/dy\n思路: y·p(dp/dy) = 1\n答案: y² = x² + C₁x + C₂')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F7FA')
            .borderRadius(8)

          Text('📝 六、常系数线性方程')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#E91E63')

          Text('18. 求解 y\'\' - 5y\' + 6y = 0\n提示: 特征方程法\n思路: r² - 5r + 6 = 0, r=2,3\n答案: y = C₁e^(2x) + C₂e^(3x)\n\n19. 求解 y\'\' + 4y\' + 4y = 0\n提示: 二重根\n思路: (r+2)² = 0\n答案: y = (C₁ + C₂x)e^(-2x)\n\n20. 求解 y\'\' + ω²y = 0\n提示: 纯虚根\n思路: r = ±ωi\n答案: y = C₁cos(ωx) + C₂sin(ωx)\n\n21. 求解 y\'\' - y = x\n提示: 非齐次, 待定系数\n思路: y* = ax+b, 0不是特征根\n答案: y = C₁e^x + C₂e^(-x) - x\n\n22. 求解 y\'\' + y = sin(x)\n提示: i是特征根, k=1\n思路: y* = x(acos(x)+bsin(x))\n答案: y = C₁cos(x) + C₂sin(x) - (x/2)cos(x)\n\n23. 求解 y\'\' - 2y\' + y = e^x\n提示: 1是二重特征根\n思路: y* = Ax²e^x\n答案: y = (C₁+C₂x)e^x + (x²/2)e^x')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FCE4EC')
            .borderRadius(8)

          Text('📝 七、应用题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('24. 人口以5%/年增长, 初始100万, 求50年后人口\n提示: dN/dt = 0.05N\n答案: N = 100e^(0.05×50) ≈ 1218万\n\n25. 半衰期为5年, 10年后剩余百分比?\n提示: N = N₀e^(-λt), λ=ln(2)/5\n答案: 25%\n\n26. 弹簧: m=1kg, k=16N/m, x(0)=2, x\'(0)=0\n提示: x\'\' + 16x = 0\n答案: x = 2cos(4t)\n\n27. 从100°降到60°用5分钟(室温20°), 求冷却系数k\n提示: T = 20 + 80e^(-kt)\n答案: k = (1/5)ln(2)\n\n28. 求曲线方程: 任一点切线斜率等于该点纵坐标的两倍\n提示: dy/dx = 2y\n答案: y = Ce^(2x)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('💡 解题策略')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('识别方程类型的关键:\n\n1️⃣ 可分离:\n   能写成 g(y)dy = f(x)dx\n\n2️⃣ 齐次:\n   dy/dx = φ(y/x)\n\n3️⃣ 一阶线性:\n   y\' + P(x)y = Q(x)\n\n4️⃣ 伯努利:\n   y\' + P(x)y = Q(x)y^n\n\n5️⃣ 可降阶:\n   不含y/不含x/只含x\n\n6️⃣ 常系数:\n   系数是常数\n\n解题顺序:\n先判断类型 → 选择方法 → 求解 → 验证')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#ECEFF1')
            .borderRadius(8)

          Text('💭 知识总结')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('微分方程核心方法:\n• 可分离: 分离+积分\n• 齐次: 令u=y/x\n• 线性: 通解公式\n• 伯努利: 换元z=y^(1-n)\n• 可降阶: 令p=y\'\n• 特征方程: 齐次方程\n• 待定系数: 非齐次方程\n• 应用: 建模+求解')
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
