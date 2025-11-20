import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct DerivativeConcept {
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

        Text('导数的概念')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('什么是导数?')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('导数描述的是函数值的变化速度。就像汽车的速度表显示的是位置随时间的变化率一样,导数就是函数值的瞬时变化率。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 核心定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('函数 f(x) 在点 x₀ 处的导数定义为:')
            .fontSize(15)

          Text("f'(x₀) = lim[Δx→0] [f(x₀+Δx) - f(x₀)] / Δx")
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#E91E63')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('💡 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('想象你在爬山:')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('• 平均变化率: 从山脚到山顶的平均坡度\n• 瞬时变化率(导数): 你脚下那一点的坡度\n• Δx → 0: 把观察范围缩到无限小,就能得到"此时此刻"的坡度')
            .fontSize(15)
            .lineHeight(24)

          Text('📊 实际例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求 f(x) = x² 在 x = 2 处的导数')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('解题步骤:\n\n1️⃣ 计算增量:\n   f(2+Δx) = (2+Δx)² = 4 + 4Δx + (Δx)²\n   f(2) = 4\n\n2️⃣ 求差商:\n   [f(2+Δx) - f(2)] / Δx = [4Δx + (Δx)²] / Δx = 4 + Δx\n\n3️⃣ 取极限:\n   lim[Δx→0] (4 + Δx) = 4\n\n答案: f\'(2) = 4')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F5F5F5')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 用定义求 f(x) = x³ 在 x = 1 处的导数\n\n2. 求 f(x) = 1/x 在 x = 2 处的导数\n\n3. 物体运动方程为 s(t) = 5t²,求 t = 3 时的瞬时速度\n\n4. 证明: 常数函数的导数为0\n\n5. 若 f(x) = 2x,求 f\'(x₀)')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 导数 = 瞬时变化率\n• 核心思想: 用极限把"平均"变成"瞬时"\n• 几何意义: 曲线在某点的切线斜率\n• 物理意义: 速度、加速度都是导数')
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