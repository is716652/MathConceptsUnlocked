import router from '@ohos.router';

@Entry
@Component
struct IntegralConcept {
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

        Text('不定积分的概念')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('什么是不定积分?')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('不定积分是导数的逆运算。如果导数是"求变化率",那么积分就是"已知变化率,求原函数"。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 原函数的定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('如果在区间 I 上,F\'(x) = f(x),则称 F(x) 为 f(x) 的原函数。')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('例如:\n• (x²)\' = 2x,所以 x² 是 2x 的原函数\n• (sin x)\' = cos x,所以 sin x 是 cos x 的原函数')
            .fontSize(14)
            .lineHeight(22)
            .padding(12)
            .backgroundColor('#FFF9C4')
            .borderRadius(8)

          Text('🔍 不定积分的定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('f(x) 的所有原函数称为 f(x) 的不定积分,记作:\n\n∫ f(x) dx = F(x) + C\n\n其中:\n• ∫ 是积分号\n• f(x) 是被积函数\n• x 是积分变量\n• dx 是微分记号\n• C 是任意常数(积分常数)')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('💡 为什么要加 C?')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('因为常数的导数为0:\n\n(x² + 1)\' = 2x\n(x² + 5)\' = 2x\n(x² + 100)\' = 2x\n(x² + C)\' = 2x\n\n所以 ∫ 2x dx = x² + C\n\nC 可以是任何常数,所以叫"不定"积分!')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📐 积分与导数的关系')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('互逆关系:\n\n1️⃣ d/dx [∫ f(x) dx] = f(x)\n   (积分后求导,还原被积函数)\n\n2️⃣ ∫ F\'(x) dx = F(x) + C\n   (导数积分,得到原函数)\n\n3️⃣ ∫ dF(x) = F(x) + C\n   (微分的积分是函数本身)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('🎯 不定积分的性质')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('性质1(线性性质):\n∫ [f(x) ± g(x)] dx = ∫ f(x) dx ± ∫ g(x) dx\n\n性质2(常数可提出):\n∫ k·f(x) dx = k·∫ f(x) dx  (k≠0)\n\n性质3(凑微分):\n∫ f(ax+b) dx = (1/a)·F(ax+b) + C')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('📚 基础例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('例1: 求 ∫ 3x² dx\n\n解:\n因为 (x³)\' = 3x²\n所以 ∫ 3x² dx = x³ + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('例2: 求 ∫ (2x + 3) dx\n\n解:\n∫ (2x + 3) dx\n= ∫ 2x dx + ∫ 3 dx\n= 2·∫ x dx + 3·∫ 1 dx\n= 2·(x²/2) + 3x + C\n= x² + 3x + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#D7CCC8')
            .borderRadius(8)

          Text('例3: 求 ∫ cos x dx\n\n解:\n因为 (sin x)\' = cos x\n所以 ∫ cos x dx = sin x + C')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#BCAAA4')
            .borderRadius(8)

          Text('例4: 验证 ∫ 2x dx = x² + C\n\n验证:\nd/dx (x² + C) = 2x ✓\n\n说明 x² + C 确实是 2x 的不定积分')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A1887F')
            .borderRadius(8)

          Text('💭 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('想象你在开车:\n\n• 速度 v(t) = 导数\n• 路程 s(t) = 原函数\n• 已知速度求路程 = 积分\n• 已知路程求速度 = 求导\n\n例如: v(t) = 60 km/h (匀速)\n路程: s(t) = 60t + C\nC 是起点位置(不确定,所以叫不定积分)')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求 ∫ 5x⁴ dx\n\n2. 求 ∫ (3x² - 2x + 1) dx\n\n3. 求 ∫ sin x dx\n\n4. 求 ∫ eˣ dx\n\n5. 求 ∫ 1/x dx\n\n6. 验证 ∫ 6x² dx = 2x³ + C\n\n7. 已知 f\'(x) = 2x + 1,求 f(x)\n\n8. 物体速度 v(t) = 3t²,求位移 s(t)')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 不定积分 = 求原函数 = 导数的逆运算\n• ∫ f(x) dx = F(x) + C\n• C 是任意常数,不能遗漏\n• 积分后求导可以检验答案\n• 线性性质: 积分可拆可提常数\n• 物理意义: 已知速度求路程')
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
