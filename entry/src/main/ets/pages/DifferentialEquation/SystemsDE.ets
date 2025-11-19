import router from '@ohos.router';

@Entry
@Component
struct SystemsDE {
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

        Text('微分方程组')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('微分方程组')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('微分方程组: 包含多个未知函数及其导数的方程组。\n\n标准形式:\ndx/dt = f(t, x, y)\ndy/dt = g(t, x, y)\n\n应用: 多变量相互影响的系统(如捕食者-被捕食者模型)')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 消元法')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('基本思想: 通过微分消去一个未知函数, 化为单个高阶方程\n\n步骤:\n1️⃣ 对某个方程求导\n2️⃣ 利用另一个方程消元\n3️⃣ 得到单个高阶方程\n4️⃣ 求解后代回求另一函数')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📝 例1: 求解方程组')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('dx/dt = 2x + 3y\ndy/dt = 3x + 2y\n\n解题思路:\n对第一个方程求导消元\n\n解:\n由方程1:\ndx/dt = 2x + 3y  ...(1)\n\n对(1)求导:\nd²x/dt² = 2(dx/dt) + 3(dy/dt)\n\n代入dy/dt = 3x + 2y:\nd²x/dt² = 2(dx/dt) + 3(3x + 2y)\n        = 2(dx/dt) + 9x + 6y\n\n由(1): y = (1/3)(dx/dt - 2x)\n\n代入:\nd²x/dt² = 2(dx/dt) + 9x + 2(dx/dt - 2x)\n        = 4(dx/dt) + 5x\n\n整理:\nd²x/dt² - 4(dx/dt) - 5x = 0\n\n特征方程: r² - 4r - 5 = 0\n(r-5)(r+1) = 0\nr = 5 或 r = -1\n\nx = C₁e^(5t) + C₂e^(-t)\n\n由y = (1/3)(dx/dt - 2x):\ny = (1/3)(5C₁e^(5t) - C₂e^(-t) - 2C₁e^(5t) - 2C₂e^(-t))\n  = (1/3)(3C₁e^(5t) - 3C₂e^(-t))\n  = C₁e^(5t) - C₂e^(-t)\n\n答案:\nx = C₁e^(5t) + C₂e^(-t)\ny = C₁e^(5t) - C₂e^(-t)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('📌 特征值方法(矩阵法)')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('对于常系数线性方程组:\n\ndX/dt = AX\n\n其中 X = [x, y]ᵀ, A是系数矩阵\n\n解法:\n1️⃣ 求A的特征值λ\n2️⃣ 求对应特征向量v\n3️⃣ 通解: X = c₁v₁e^(λ₁t) + c₂v₂e^(λ₂t)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📌 应用: Lotka-Volterra模型')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('捕食者-被捕食者模型:\n\ndx/dt = ax - bxy  (被捕食者)\ndy/dt = -cy + dxy (捕食者)\n\nx: 被捕食者数量(如兔子)\ny: 捕食者数量(如狐狸)\n\n参数:\na: 被捕食者增长率\nb: 捕食率\nc: 捕食者死亡率\nd: 捕食转化率\n\n特点: 周期性振荡解')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📝 例2: 简化的捕食模型')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('dx/dt = x - xy\ndy/dt = -y + xy\n\n解题思路:\n找平衡点和相图特征\n\n解:\n1. 平衡点(dx/dt=0, dy/dt=0):\n   x - xy = 0 → x(1-y) = 0\n   -y + xy = 0 → y(x-1) = 0\n\n   平衡点: (0,0)和(1,1)\n\n2. 相图分析:\n   除以dy/dx:\n   dy/dx = (-y+xy)/(x-xy) = y(x-1)/[x(1-y)]\n\n   这是可分离变量方程:\n   (1-y)/y dy = (x-1)/x dx\n   ∫[(1/y)-1]dy = ∫[1-(1/x)]dx\n   ln|y| - y = x - ln|x| + C\n\n   得到相轨线方程(隐式)\n\n特点: 围绕(1,1)的闭合轨线, 周期振荡\n\n答: 系统呈现周期性振荡, 两种群数量交替增减')
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

          Text('1. 求解:\n   dx/dt = x + y\n   dy/dt = 4x + y\n   提示: 消元法\n\n2. 求解:\n   dx/dt = -y\n   dy/dt = x\n   提示: 简单消元\n\n3. 求解:\n   dx/dt = 3x - 2y\n   dy/dt = 2x - 2y\n   提示: 特征方程\n\n4. 求平衡点:\n   dx/dt = x(3-x-2y)\n   dy/dt = y(2-x-y)\n   提示: 令两式=0\n\n5. 判断(0,0)的稳定性:\n   dx/dt = -x + 2y\n   dy/dt = -2x - y\n   提示: 特征值实部')
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

          Text('微分方程组解法选择:\n\n1️⃣ 消元法:\n   • 适用于任何线性方程组\n   • 化为高阶单方程\n   • 计算相对简单\n\n2️⃣ 矩阵法:\n   • 适用于常系数线性组\n   • 需要线性代数知识\n   • 便于稳定性分析\n\n3️⃣ 相图法:\n   • 定性分析\n   • 找平衡点\n   • 判断稳定性\n\n平衡点稳定性:\n• 特征值实部<0: 稳定\n• 特征值实部>0: 不稳定\n• 纯虚根: 中心点(周期解)')
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

          Text('• 消元法: 化为高阶方程\n• 特征值法: 矩阵方法\n• Lotka-Volterra: 捕食模型\n• 平衡点: 导数为0的点\n• 稳定性: 特征值判断\n• 周期解: 闭合轨线')
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
