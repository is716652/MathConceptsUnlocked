import router from '@ohos.router';

@Entry
@Component
struct FundamentalTheorem {
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

        Text('微积分基本定理')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('微积分基本定理')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('这是微积分中最重要的定理,它建立了定积分与不定积分之间的桥梁,让计算定积分变得超级简单!')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 牛顿-莱布尼茨公式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('若 F(x) 是 f(x) 的一个原函数,则:\n\n∫ₐᵇ f(x) dx = F(b) - F(a)\n\n记作: ∫ₐᵇ f(x) dx = F(x)|ₐᵇ\n\n步骤:\n1️⃣ 求不定积分 F(x) (任意一个原函数)\n2️⃣ 代入上限 b: F(b)\n3️⃣ 代入下限 a: F(a)\n4️⃣ 相减: F(b) - F(a)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('💡 为什么不用加 C?')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('如果写成 F(x)+C:\n\n∫ₐᵇ f(x)dx = [F(b)+C] - [F(a)+C]\n           = F(b) + C - F(a) - C\n           = F(b) - F(a)\n\nC 被抵消了! 所以定积分不需要 +C。')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📚 基础例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('例1: 计算 ∫₀¹ x² dx\n\n解:\n∫ x² dx = x³/3  (先求不定积分)\n\n∫₀¹ x² dx = [x³/3]₀¹\n          = (1³/3) - (0³/3)\n          = 1/3 - 0\n          = 1/3')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例2: 计算 ∫₁⁴ √x dx\n\n解:\n∫ √x dx = ∫ x^(1/2) dx\n        = x^(3/2) / (3/2)\n        = (2/3)x^(3/2)\n\n∫₁⁴ √x dx = [(2/3)x^(3/2)]₁⁴\n          = (2/3)·4^(3/2) - (2/3)·1^(3/2)\n          = (2/3)·8 - (2/3)·1\n          = 16/3 - 2/3\n          = 14/3')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('例3: 计算 ∫₀^π sin x dx\n\n解:\n∫ sin x dx = -cos x\n\n∫₀^π sin x dx = [-cos x]₀^π\n              = -cos π - (-cos 0)\n              = -(-1) - (-1)\n              = 1 + 1 = 2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('例4: 计算 ∫₁^e (1/x) dx\n\n解:\n∫ (1/x) dx = ln|x|\n\n∫₁^e (1/x) dx = [ln|x|]₁^e\n              = ln e - ln 1\n              = 1 - 0 = 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#81C784')
            .borderRadius(8)

          Text('例5: 计算 ∫₀¹ eˣ dx\n\n解:\n∫ eˣ dx = eˣ\n\n∫₀¹ eˣ dx = [eˣ]₀¹\n          = e¹ - e⁰\n          = e - 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#66BB6A')
            .borderRadius(8)

          Text('🔍 变上限积分函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('定义: Φ(x) = ∫ₐˣ f(t) dt\n\n这是一个关于 x 的函数(上限是变量)。\n\n重要性质:\nΦ\'(x) = d/dx [∫ₐˣ f(t) dt] = f(x)\n\n通俗理解:\n变上限积分函数的导数 = 被积函数本身!')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例6: 求 d/dx [∫₀ˣ t² dt]\n\n解:\n根据变上限积分求导公式:\nd/dx [∫₀ˣ t² dt] = x²\n\n验证:\n∫₀ˣ t² dt = [t³/3]₀ˣ = x³/3\nd/dx [x³/3] = x²  ✓')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('例7: 求 d/dx [∫₁^(x²) sin t dt]\n\n解:设 u = x²,则\n\nd/dx [∫₁^u sin t dt] = d/dx [∫₁^u sin t dt]\n                     = sin u · du/dx  (链式法则)\n                     = sin(x²) · 2x\n                     = 2x sin(x²)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EF9A9A')
            .borderRadius(8)

          Text('💭 微积分基本定理的意义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('这个定理有多重要?\n\n1️⃣ 统一了微分和积分\n   导数 ⟷ 积分 (互为逆运算)\n\n2️⃣ 简化了定积分计算\n   不用再用定义(分割-求和-取极限)\n   只需:求原函数→代上下限→相减\n\n3️⃣ 物理意义\n   速度积分 = 位移变化\n   v(t) → s(t) = s(b) - s(a)\n\n4️⃣ 历史意义\n   牛顿和莱布尼茨分别独立发现\n   标志着微积分学的诞生!')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 综合应用')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例8: 已知 f(x)连续,且 ∫₀ˣ f(t)dt = x²·sin x,求 f(x)\n\n解:\n两边对 x 求导:\nd/dx [∫₀ˣ f(t)dt] = d/dx [x²·sin x]\n\n左边 = f(x)  (变上限积分求导)\n\n右边 = 2x·sin x + x²·cos x  (乘积求导)\n\n所以 f(x) = 2x sin x + x² cos x')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例9: 计算 ∫₋₁² |x| dx\n\n解:需要分段去绝对值\n\n|x| = { -x, x<0\n      {  x, x≥0\n\n∫₋₁² |x| dx = ∫₋₁⁰ (-x) dx + ∫₀² x dx\n            = [-x²/2]₋₁⁰ + [x²/2]₀²\n            = [0-(-1/2)] + [2-0]\n            = 1/2 + 2 = 5/2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 计算 ∫₀² 3x² dx\n\n2. 计算 ∫₁⁴ (1/√x) dx\n\n3. 计算 ∫₀^(π/2) cos x dx\n\n4. 计算 ∫₁² (1/x²) dx\n\n5. 计算 ∫₀^(ln 2) eˣ dx\n\n6. 求 d/dx [∫₂ˣ (t²+1) dt]\n\n7. 求 d/dx [∫₀^(sin x) t² dt]\n\n8. 已知 ∫₀ˣ f(t)dt = x³-x,求 f(2)\n\n9. 计算 ∫₋π^π |sin x| dx\n\n10. 验证:∫₀¹ x dx = 1/2')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 核心公式:∫ₐᵇ f(x)dx = F(b) - F(a)\n• F(x) 是 f(x) 的任意原函数\n• 定积分不需要 +C (会抵消)\n• 变上限积分: [∫ₐˣ f(t)dt]\' = f(x)\n• 这是微积分最核心的定理\n• 记住:求原函数→代入→相减\n• 绝对值函数需要分段积分')
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
