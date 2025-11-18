import router from '@ohos.router';

@Entry
@Component
struct Substitution {
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

        Text('定积分的换元法')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('定积分的换元法')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('定积分换元与不定积分换元的最大区别:换元后要同时换上下限!')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 定积分换元公式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('设 x = φ(t) 单调可导,f[φ(t)]·φ\'(t) 连续,且:\n• 当 t=α 时,x=a\n• 当 t=β 时,x=b\n\n则:\n∫ₐᵇ f(x) dx = ∫ₐᵝ f[φ(t)]·φ\'(t) dt\n\n关键步骤:\n1️⃣ 设 x = φ(t),求 dx = φ\'(t)dt\n2️⃣ 换上下限:x=a→t=α, x=b→t=β\n3️⃣ 替换被积函数\n4️⃣ 计算新积分')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('💡 两种处理方式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('方法1:换元后换限(推荐)\n∫ₐᵇ f(x)dx → ∫ₐᵝ F(t)dt = G(β) - G(α)\n优点:一气呵成,不易出错\n\n方法2:换元后换回\n∫ₐᵇ f(x)dx → ∫ F(t)dt = G(t) + C\n             → G(x) + C → G(b) - G(a)\n优点:可以检验不定积分')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📚 基础例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('例1: 计算 ∫₀¹ x√(1-x²) dx\n\n解:令 t = 1-x²\n   dt = -2x dx → x dx = -dt/2\n\n换限:\n当 x=0 时,t = 1-0² = 1\n当 x=1 时,t = 1-1² = 0\n\n∫₀¹ x√(1-x²) dx\n= ∫₁⁰ √t · (-dt/2)\n= -1/2 · ∫₁⁰ t^(1/2) dt\n= 1/2 · ∫₀¹ t^(1/2) dt  (交换上下限)\n= 1/2 · [2t^(3/2)/3]₀¹\n= 1/2 · 2/3 · (1-0)\n= 1/3')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例2: 计算 ∫₀^(π/2) sin²x dx\n\n解:用降幂公式\nsin²x = (1-cos2x)/2\n\n∫₀^(π/2) sin²x dx\n= ∫₀^(π/2) (1-cos2x)/2 dx\n= 1/2 ∫₀^(π/2) dx - 1/2 ∫₀^(π/2) cos2x dx\n= 1/2·[x]₀^(π/2) - 1/2·[sin2x/2]₀^(π/2)\n= 1/2·π/2 - 1/4·(sin π - sin 0)\n= π/4 - 0 = π/4')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('例3: 计算 ∫₁^e (ln x)/x dx\n\n解:令 t = ln x\n   dt = (1/x) dx\n\n换限:\n当 x=1 时,t = ln 1 = 0\n当 x=e 时,t = ln e = 1\n\n∫₁^e (ln x)/x dx\n= ∫₀¹ t dt\n= [t²/2]₀¹\n= 1/2 - 0 = 1/2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('🎯 三角代换')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('常用三角代换:\n\n1️⃣ √(a²-x²) 型 → 令 x = a sin t\n2️⃣ √(a²+x²) 型 → 令 x = a tan t\n3️⃣ √(x²-a²) 型 → 令 x = a sec t')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例4: 计算 ∫₀¹ √(1-x²) dx\n\n解:令 x = sin t\n   dx = cos t dt\n\n换限:\n当 x=0 时,sin t=0 → t=0\n当 x=1 时,sin t=1 → t=π/2\n\n√(1-x²) = √(1-sin²t) = cos t\n\n∫₀¹ √(1-x²) dx\n= ∫₀^(π/2) cos t · cos t dt\n= ∫₀^(π/2) cos²t dt\n= ∫₀^(π/2) (1+cos2t)/2 dt\n= 1/2·[t + sin2t/2]₀^(π/2)\n= 1/2·[π/2 + 0 - 0]\n= π/4\n\n(这就是1/4圆面积!)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('🎯 倒代换')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('当被积函数分母次数高时,可用倒代换:\n令 x = 1/t')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例5: 计算 ∫₁² dx/(x²√(x²-1))\n\n解:令 x = 1/t\n   dx = -dt/t²\n\n换限:\n当 x=1 时,t=1\n当 x=2 时,t=1/2\n\n√(x²-1) = √(1/t² - 1) = √(1-t²)/t\n\n∫₁² dx/(x²√(x²-1))\n= ∫₁^(1/2) (-dt/t²) / [(1/t²)·√(1-t²)/t]\n= -∫₁^(1/2) dt/√(1-t²)\n= ∫_(1/2)¹ dt/√(1-t²)\n= [arcsin t]_(1/2)¹\n= arcsin 1 - arcsin(1/2)\n= π/2 - π/6 = π/3')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('💭 区间再现公式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('重要性质:\n∫ₐᵇ f(x) dx = ∫ₐᵇ f(a+b-x) dx\n\n证明:令 t = a+b-x\n当 x=a 时,t=b\n当 x=b 时,t=a\ndt = -dx\n\n∫ₐᵇ f(x) dx = ∫ᵇₐ f(a+b-t)·(-dt)\n            = ∫ₐᵇ f(a+b-t) dt\n            = ∫ₐᵇ f(a+b-x) dx')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('例6: 计算 ∫₀^π x·sin x dx\n\n解:用区间再现\nI = ∫₀^π x·sin x dx\n  = ∫₀^π (π-x)·sin(π-x) dx\n  = ∫₀^π (π-x)·sin x dx\n\n两式相加:\n2I = ∫₀^π [x + (π-x)]·sin x dx\n   = ∫₀^π π·sin x dx\n   = π·[-cos x]₀^π\n   = π·[1-(-1)] = 2π\n\n所以 I = π')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C5CAE9')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 计算 ∫₀^(π/2) cos x·sin²x dx (令t=sin x)\n\n2. 计算 ∫₁^e² (ln x)/x dx\n\n3. 计算 ∫₀^(π/4) tan x dx\n\n4. 计算 ∫₀² x·√(4-x²) dx (令t=4-x²)\n\n5. 计算 ∫₀^(π/2) sin⁴x dx\n\n6. 用区间再现计算 ∫₀^π x/(1+sin x) dx\n\n7. 计算 ∫₁⁴ √x/(1+√x) dx (令t=√x)\n\n8. 计算 ∫₀^(π/2) dx/(1+tan x)')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 定积分换元必须换限!\n• 换限公式:x=a→t=α, x=b→t=β\n• 可以换元后换限,也可换元后换回\n• 三角代换:根号想三角\n• 倒代换:分母次数高用 x=1/t\n• 区间再现:∫f(x)dx = ∫f(a+b-x)dx\n• 熟练掌握换限技巧很重要!')
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
