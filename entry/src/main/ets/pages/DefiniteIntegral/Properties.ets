import router from '@ohos.router';

@Entry
@Component
struct Properties {
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

        Text('定积分的性质')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('定积分的基本性质')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('这些性质可以简化计算,是后续学习的基础工具!')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 性质1:线性性质')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('∫ₐᵇ [f(x) ± g(x)] dx = ∫ₐᵇ f(x)dx ± ∫ₐᵇ g(x)dx\n\n∫ₐᵇ kf(x)dx = k·∫ₐᵇ f(x)dx  (k为常数)\n\n通俗理解:\n• 积分可以拆开算\n• 常数可以提到积分号外')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('例1: 计算 ∫₀¹ (3x² + 2x) dx\n\n解:\n∫₀¹ (3x² + 2x) dx\n= ∫₀¹ 3x² dx + ∫₀¹ 2x dx\n= 3·∫₀¹ x² dx + 2·∫₀¹ x dx\n= 3·[x³/3]₀¹ + 2·[x²/2]₀¹\n= 3·(1/3) + 2·(1/2)\n= 1 + 1 = 2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('📌 性质2:区间可加性')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('∫ₐᵇ f(x)dx = ∫ₐᶜ f(x)dx + ∫ᶜᵇ f(x)dx\n\n其中 c 可以在 [a,b] 内,也可以在外!\n\n通俗理解:\n积分区间可以任意拆分或合并,就像测量总路程可以分段测量。')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例2: 已知 ∫₀² f(x)dx = 5, ∫₂⁵ f(x)dx = 3,求 ∫₀⁵ f(x)dx\n\n解:\n∫₀⁵ f(x)dx = ∫₀² f(x)dx + ∫₂⁵ f(x)dx\n           = 5 + 3 = 8')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('例3: 计算 ∫₋₁¹ |x| dx\n\n解:需要去绝对值,按 x=0 分段\n\n|x| = { -x, x<0\n      {  x, x≥0\n\n∫₋₁¹ |x| dx = ∫₋₁⁰ (-x)dx + ∫₀¹ x dx\n            = [-x²/2]₋₁⁰ + [x²/2]₀¹\n            = 0-(-1/2) + 1/2-0\n            = 1/2 + 1/2 = 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('📌 性质3:保号性')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('若在 [a,b] 上 f(x) ≥ 0,则:\n∫ₐᵇ f(x)dx ≥ 0\n\n若在 [a,b] 上 f(x) ≥ g(x),则:\n∫ₐᵇ f(x)dx ≥ ∫ₐᵇ g(x)dx\n\n通俗理解:\n函数值越大,积分值越大(面积越大)。')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例4: 比较 ∫₀^(π/2) sin x dx 和 ∫₀^(π/2) cos x dx\n\n分析:在 [0,π/4] 上,cos x > sin x\n      在 [π/4,π/2] 上,sin x > cos x\n\n由对称性(互补角性质)可知:\n∫₀^(π/2) sin x dx = ∫₀^(π/2) cos x dx = 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('📌 性质4:估值定理')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('设 m ≤ f(x) ≤ M 在 [a,b] 上成立,则:\n\nm(b-a) ≤ ∫ₐᵇ f(x)dx ≤ M(b-a)\n\n通俗理解:\n积分值介于最小矩形和最大矩形面积之间。')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例5: 估计 ∫₁² (1/x)dx 的值\n\n分析:在 [1,2] 上\nx ∈ [1,2] → 1/x ∈ [1/2, 1]\n\n所以 m = 1/2, M = 1, b-a = 1\n\n1/2·1 ≤ ∫₁² (1/x)dx ≤ 1·1\n\n即 0.5 ≤ ∫₁² (1/x)dx ≤ 1\n\n(精确值:ln2 ≈ 0.693)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('📌 性质5:积分中值定理')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('若 f(x) 在 [a,b] 上连续,则至少存在一点 ξ ∈ [a,b],使得:\n\n∫ₐᵇ f(x)dx = f(ξ)·(b-a)\n\n通俗理解:\n曲边梯形面积 = 某个矩形面积\nf(ξ) 就是这个矩形的高度(平均高度)。\n\n因此: f(ξ) = [∫ₐᵇ f(x)dx] / (b-a)\n\n这个 f(ξ) 叫做 f(x) 在 [a,b] 上的平均值。')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例6: 求 f(x)=x² 在 [0,2] 上的平均值\n\n解:\nf̄ = [∫₀² x² dx] / (2-0)\n  = [x³/3]₀² / 2\n  = (8/3) / 2\n  = 4/3\n\n验证:f(0)=0, f(2)=4, 平均值 4/3 确实在其间。')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('💭 通俗理解:中值定理')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('想象你开车从A地到B地:\n\n• 路程 = ∫ₐᵇ v(t)dt (速度积分)\n• 平均速度 = 路程/时间\n• 中值定理说:必存在某时刻,\n  瞬时速度 = 平均速度\n\n例如:2小时开了120公里\n平均速度60km/h\n必有某时刻你正好开60km/h!')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 对称区间上的积分')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('若 f(x) 在 [-a,a] 上连续:\n\n1️⃣ 若 f(x) 为偶函数 [f(-x)=f(x)]\n   ∫₋ₐᵃ f(x)dx = 2∫₀ᵃ f(x)dx\n\n2️⃣ 若 f(x) 为奇函数 [f(-x)=-f(x)]\n   ∫₋ₐᵃ f(x)dx = 0\n\n记忆口诀:\n奇偶对称巧积分,奇零偶倍记心间!')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('例7: 计算 ∫₋₂² x³ dx\n\n解:f(x)=x³ 是奇函数\n∫₋₂² x³ dx = 0')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#D7CCC8')
            .borderRadius(8)

          Text('例8: 计算 ∫₋₁¹ (x² + x⁴) dx\n\n解:f(x)=x²+x⁴ 是偶函数\n∫₋₁¹ (x²+x⁴) dx = 2∫₀¹ (x²+x⁴) dx\n                = 2[x³/3 + x⁵/5]₀¹\n                = 2(1/3 + 1/5)\n                = 2·8/15 = 16/15')
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

          Text('1. 已知 ∫₁³ f(x)dx=4, ∫₃⁵ f(x)dx=2,求 ∫₁⁵ f(x)dx\n\n2. 计算 ∫₋π^π sin x dx\n\n3. 计算 ∫₋₂² (x³ + x² + 1) dx\n\n4. 比较:∫₀¹ x dx 和 ∫₀¹ x² dx 的大小\n\n5. 估计 ∫₀^(π/2) sin x dx 的范围\n\n6. 求 f(x)=sin x 在 [0,π] 上的平均值\n\n7. 已知 ∫₀² f(x)dx=3, ∫₁² f(x)dx=1,求 ∫₀¹ f(x)dx\n\n8. 计算 ∫₋₁¹ √(1-x²) dx (用几何意义)')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 线性性质:可拆可提\n• 区间可加性:可分段积分\n• 保号性:大函数积分大\n• 估值定理:m(b-a) ≤ ∫ ≤ M(b-a)\n• 中值定理:存在平均值点\n• 奇函数积分为0,偶函数积分加倍\n• 这些性质是简化计算的利器!')
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
