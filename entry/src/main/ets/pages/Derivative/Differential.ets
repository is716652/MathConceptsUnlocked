import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct Differential {
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

        Text('微分及其应用')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('微分的概念')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('微分是函数增量的线性主部,用来近似计算函数的改变量。导数和微分是一对孪生兄弟。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 微分的定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('函数 y = f(x) 的微分定义为:\n\ndy = f\'(x)·dx\n\n其中 dx = Δx 是自变量的微分')
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

          Text('想象你在爬坡:\n\n• 实际高度变化 Δy: 沿曲线爬升的高度\n• 微分 dy: 沿切线爬升的高度\n• 当 dx 很小时,dy ≈ Δy\n\n微分就是用"直代曲"的近似方法!')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('🔗 导数与微分的关系')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('dy = f\'(x)·dx\n\n两边除以 dx:\n\ndy/dx = f\'(x)\n\n所以导数 = 微分之商')
            .fontSize(15)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📐 微分的几何意义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('在点 (x₀, y₀) 处:\n\n• Δy: 曲线上纵坐标的实际增量\n• dy: 切线上纵坐标的增量\n• 当 Δx → 0 时,dy 是 Δy 的线性主部\n\ndy/Δy → 1 (当 Δx → 0)')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('📚 微分计算例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例1: 求 y = x³ 的微分\n\n解:\ndy = (x³)\' · dx\n   = 3x² · dx')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例2: 求 y = sin x 的微分\n\n解:\ndy = (sin x)\' · dx\n   = cos x · dx')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('例3: 求 y = e²ˣ 的微分\n\n解:\ndy = (e²ˣ)\' · dx\n   = 2e²ˣ · dx')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#80CBC4')
            .borderRadius(8)

          Text('🎯 微分的应用—近似计算')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('利用 f(x₀ + Δx) ≈ f(x₀) + f\'(x₀)·Δx\n\n步骤:\n1️⃣ 选择合适的 x₀ (函数值已知)\n2️⃣ 计算 Δx = x - x₀\n3️⃣ 计算 f\'(x₀)\n4️⃣ 代入公式')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('例4: 用微分近似计算 √101\n\n解:\n设 f(x) = √x, x₀ = 100, Δx = 1\n\nf\'(x) = 1/(2√x)\nf\'(100) = 1/(2√100) = 1/20\n\n√101 ≈ √100 + 1/20 · 1\n      = 10 + 0.05\n      = 10.05\n\n(实际值: 10.0498...)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#D7CCC8')
            .borderRadius(8)

          Text('例5: 近似计算 sin(31°)\n\n解:\n设 f(x) = sin x, x₀ = 30° = π/6\nΔx = 1° = π/180\n\nf\'(x) = cos x\nf\'(π/6) = cos(30°) = √3/2\n\nsin(31°) ≈ sin(30°) + cos(30°)·π/180\n        ≈ 0.5 + 0.866 × 0.0175\n        ≈ 0.515')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#BCAAA4')
            .borderRadius(8)

          Text('🔬 微分在误差估计中的应用')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('测量误差传播公式:\n\n绝对误差: Δy ≈ dy = f\'(x)·Δx\n相对误差: Δy/y ≈ dy/y = f\'(x)·dx/f(x)\n\n例: 测量圆的半径有 1% 的误差,\n    求面积的相对误差\n\nS = πr², dS = 2πr·dr\ndS/S = 2πr·dr/(πr²) = 2·dr/r\n    = 2 × 1% = 2%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('一、求微分:\n\n1. y = x⁴\n\n2. y = cos(2x)\n\n3. y = ln(x²+1)\n\n4. y = e^(-x)\n\n二、近似计算:\n\n5. 用微分计算 ∛1001\n\n6. 近似计算 cos(46°)\n\n7. 计算 (1.02)⁵\n\n三、误差估计:\n\n8. 球的半径测量误差 0.1cm,半径为 10cm,\n   求体积的绝对误差和相对误差')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 微分: dy = f\'(x)·dx\n• 导数 = dy/dx\n• 微分是函数增量的线性主部\n• 用切线近似曲线(以直代曲)\n• 应用: 近似计算、误差估计\n• Δy ≈ dy 当 Δx 很小时')
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