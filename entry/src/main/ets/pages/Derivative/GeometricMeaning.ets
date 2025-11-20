import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct GeometricMeaning {
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

        Text('导数的几何意义')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('导数的几何意义')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('导数在几何上表示曲线在某点处的切线斜率,这是导数最直观的理解。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 核心结论')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text("函数 y = f(x) 在点 (x₀, f(x₀)) 处的导数 f'(x₀) 就是切线的斜率 k")
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#E91E63')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📐 切线方程')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text("过点 (x₀, y₀) 且斜率为 k = f'(x₀) 的切线方程:")
            .fontSize(15)

          Text("y - y₀ = f'(x₀)(x - x₀)")
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('💡 从割线到切线')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('想象过程:\n\n1️⃣ 割线: 连接曲线上两点 P(x₀, f(x₀)) 和 Q(x₀+Δx, f(x₀+Δx))\n   斜率 = [f(x₀+Δx) - f(x₀)] / Δx\n\n2️⃣ 让 Q 点无限靠近 P 点 (Δx → 0)\n\n3️⃣ 割线 PQ 的极限位置就是切线\n   切线斜率 = lim[Δx→0] [f(x₀+Δx) - f(x₀)] / Δx = f\'(x₀)')
            .fontSize(14)
            .lineHeight(22)
            .padding(12)
            .backgroundColor('#F5F5F5')
            .borderRadius(8)

          Text('📊 实际例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例1: 求曲线 y = x² 在点 (1, 1) 处的切线方程')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('解:\n\n1️⃣ 求导数(切线斜率):\n   f\'(x) = 2x\n   f\'(1) = 2\n\n2️⃣ 代入切线方程:\n   y - 1 = 2(x - 1)\n   y = 2x - 1\n\n答案: 切线方程为 y = 2x - 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F7FA')
            .borderRadius(8)

          Text('例2: 求曲线 y = 1/x 在点 (2, 1/2) 处的法线方程')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('解:\n\n1️⃣ 求切线斜率:\n   f\'(x) = -1/x²\n   f\'(2) = -1/4\n\n2️⃣ 法线斜率 = -1/切线斜率 = 4\n\n3️⃣ 法线方程:\n   y - 1/2 = 4(x - 2)\n   y = 4x - 15/2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF9C4')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求曲线 y = x³ 在点 (1, 1) 处的切线方程\n\n2. 求抛物线 y = x² - 2x + 3 在 x = 1 处的切线方程\n\n3. 曲线 y = x² 上哪一点的切线平行于直线 y = 4x - 1?\n\n4. 求曲线 y = sin(x) 在点 (0, 0) 处的切线方程\n\n5. 已知切线方程 y = 3x + 1 与曲线 y = x² 相切,求切点坐标')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFE0B2')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 导数 = 切线斜率\n• 切线方程: y - y₀ = k(x - x₀)\n• 法线垂直于切线,斜率乘积为 -1\n• 平行线斜率相等,垂直线斜率乘积为 -1')
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
  
      // 悠悠浮动按钮
      YouyouFloatingButton()
    }
  }
}