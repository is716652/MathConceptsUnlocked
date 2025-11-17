import router from '@ohos.router';

@Entry
@Component
struct ImplicitAndParametric {
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

        Text('隐函数与参数方程求导')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('隐函数求导')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('有些函数关系藏在方程里,无法显式表达成 y = f(x) 的形式,这就是隐函数。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 什么是隐函数?')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('显函数: y = x² + 1  (y 用 x 明确表示)\n\n隐函数: x² + y² = 1  (x 和 y 混在一起)')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🔍 隐函数求导法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('方程两边同时对 x 求导,把 y 看作 x 的函数,用链式法则处理含 y 的项,最后解出 dy/dx')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📚 隐函数求导例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求圆 x² + y² = 1 在点 (x, y) 处的导数\n\n解:\n1️⃣ 两边对 x 求导:\n   2x + 2y·dy/dx = 0\n\n2️⃣ 解出 dy/dx:\n   dy/dx = -x/y\n\n(注意: y 的导数要乘 dy/dx)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 求 xy + y² = x 的导数\n\n解:\n1️⃣ 两边对 x 求导:\n   (xy)\' + (y²)\' = 1\n   y + x·dy/dx + 2y·dy/dx = 1\n\n2️⃣ 整理含 dy/dx 的项:\n   (x + 2y)·dy/dx = 1 - y\n\n3️⃣ 解出:\n   dy/dx = (1 - y)/(x + 2y)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('🎨 参数方程求导')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('参数方程用第三个变量 t 来表示 x 和 y:\n\nx = φ(t)\ny = ψ(t)')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('📐 参数方程求导公式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('dy/dx = (dy/dt) / (dx/dt) = ψ\'(t) / φ\'(t)')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('💡 记忆: 分子分母都对 t 求导,然后相除')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)

          Text('📊 参数方程求导例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('例3: 求参数方程的导数\nx = t²\ny = 2t\n\n解:\ndx/dt = 2t\ndy/dt = 2\n\ndy/dx = (dy/dt)/(dx/dt)\n      = 2/(2t)\n      = 1/t')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('例4: 圆的参数方程\nx = cos t\ny = sin t\n\n解:\ndx/dt = -sin t\ndy/dt = cos t\n\ndy/dx = cos t / (-sin t)\n      = -cot t\n      = -cos t / sin t')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#D7CCC8')
            .borderRadius(8)

          Text('例5: 摆线(旋轮线)\nx = a(t - sin t)\ny = a(1 - cos t)\n\n解:\ndx/dt = a(1 - cos t)\ndy/dt = a·sin t\n\ndy/dx = [a·sin t] / [a(1 - cos t)]\n      = sin t / (1 - cos t)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#BCAAA4')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('一、隐函数求导:\n\n1. x² + y² = 25\n\n2. x³ + y³ = 3xy\n\n3. e^y + xy = e\n\n4. sin(x + y) = x\n\n二、参数方程求导:\n\n5. x = 3t², y = 2t³\n\n6. x = e^t, y = e^(-t)\n\n7. x = a·cos³t, y = a·sin³t\n\n8. x = ln(1+t²), y = t - arctan t')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 隐函数: 两边同时求导,含 y 的项用链式法则\n• 参数方程: dy/dx = (dy/dt) / (dx/dt)\n• 隐函数结果中可能含 x 和 y\n• 参数方程结果可用 t 表示,也可代入消去 t')
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
