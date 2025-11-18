import router from '@ohos.router';

@Entry
@Component
struct IntegrationByParts {
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

        Text('定积分的分部积分')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('定积分的分部积分法')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('分部积分法在定积分中同样适用,但有一个重要技巧:区间再现!')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 定积分分部积分公式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('∫ₐᵇ u dv = [uv]ₐᵇ - ∫ₐᵇ v du\n\n或者:\n∫ₐᵇ u(x)v\'(x) dx = [u(x)v(x)]ₐᵇ - ∫ₐᵇ u\'(x)v(x) dx\n\n与不定积分区别:\n• 不定积分: ∫ u dv = uv - ∫ v du + C\n• 定积分:   ∫ₐᵇ u dv = [uv]ₐᵇ - ∫ₐᵇ v du\n\n关键:要代入上下限!')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('💡 选择 u 和 dv 的原则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('口诀:"反对幂三指"\n\n优先选为 u 的顺序:\n1️⃣ 反三角函数 (arcsin, arctan...)\n2️⃣ 对数函数 (ln x, log x)\n3️⃣ 幂函数 (x, x², x³...)\n4️⃣ 三角函数 (sin, cos, tan...)\n5️⃣ 指数函数 (eˣ, aˣ)\n\n原则:谁在前面选谁当 u')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📚 基础例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('例1: 计算 ∫₀^(π/2) x·cos x dx\n\n解:令 u=x, dv=cos x dx\n   则 du=dx, v=sin x\n\n∫₀^(π/2) x·cos x dx\n= [x·sin x]₀^(π/2) - ∫₀^(π/2) sin x dx\n= (π/2·1 - 0·0) - [-cos x]₀^(π/2)\n= π/2 - [0-(-1)]\n= π/2 - 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例2: 计算 ∫₁^e x·ln x dx\n\n解:令 u=ln x, dv=x dx\n   则 du=(1/x)dx, v=x²/2\n\n∫₁^e x·ln x dx\n= [(x²/2)·ln x]₁^e - ∫₁^e (x²/2)·(1/x) dx\n= (e²/2·1 - 1/2·0) - ∫₁^e (x/2) dx\n= e²/2 - [x²/4]₁^e\n= e²/2 - (e²/4 - 1/4)\n= e²/2 - e²/4 + 1/4\n= e²/4 + 1/4\n= (e²+1)/4')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('例3: 计算 ∫₀¹ eˣ·x dx\n\n解:令 u=x, dv=eˣ dx\n   则 du=dx, v=eˣ\n\n∫₀¹ eˣ·x dx\n= [x·eˣ]₀¹ - ∫₀¹ eˣ dx\n= (1·e - 0·1) - [eˣ]₀¹\n= e - (e-1)\n= e - e + 1 = 1')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('🎯 区间再现技巧')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('结合分部积分和区间再现,可以解决一些特殊积分。\n\n关键公式:\n∫₀^(π/2) f(sin x) dx = ∫₀^(π/2) f(cos x) dx')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例4: 计算 ∫₀^π x·sin x dx\n\n解法1(区间再现):\n令 I = ∫₀^π x·sin x dx\n\n利用 ∫ₐᵇ f(x)dx = ∫ₐᵇ f(a+b-x)dx:\nI = ∫₀^π (π-x)·sin(π-x) dx\n  = ∫₀^π (π-x)·sin x dx\n\n相加:\n2I = ∫₀^π [x + (π-x)]·sin x dx\n   = ∫₀^π π·sin x dx\n   = π·[-cos x]₀^π\n   = π·(1+1) = 2π\n\n所以 I = π\n\n解法2(分部积分):\nI = [x·(-cos x)]₀^π - ∫₀^π (-cos x) dx\n  = -π·(-1) - 0 + [sin x]₀^π\n  = π + 0 = π')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('🎯 递推公式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('有些积分可以建立递推关系式。')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例5: 设 Iₙ = ∫₀^(π/2) sinⁿx dx,求递推公式\n\n解:\nIₙ = ∫₀^(π/2) sinⁿx dx\n   = ∫₀^(π/2) sinⁿ⁻¹x·sin x dx\n\n分部积分:\nu = sinⁿ⁻¹x, dv = sin x dx\ndu = (n-1)sinⁿ⁻²x·cos x dx, v = -cos x\n\nIₙ = [-sinⁿ⁻¹x·cos x]₀^(π/2) \n    + (n-1)∫₀^(π/2) sinⁿ⁻²x·cos²x dx\n   = 0 + (n-1)∫₀^(π/2) sinⁿ⁻²x·(1-sin²x) dx\n   = (n-1)Iₙ₋₂ - (n-1)Iₙ\n\nnIₙ = (n-1)Iₙ₋₂\n\n∴ Iₙ = [(n-1)/n]·Iₙ₋₂\n\n利用 I₀=π/2, I₁=1,可算出任意 Iₙ')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('💭 华里士公式(Wallis公式)')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('利用上面的递推公式,可得:\n\nIₙ = ∫₀^(π/2) sinⁿx dx = ∫₀^(π/2) cosⁿx dx\n\nn为偶数:Iₙ = [(n-1)!!/(n)!!]·(π/2)\nn为奇数:Iₙ = [(n-1)!!/(n)!!]\n\n其中 n!! 表示双阶乘:\n6!! = 6×4×2\n5!! = 5×3×1\n\n例如:\nI₂ = (1/2)·(π/2) = π/4\nI₃ = (2/3)·1 = 2/3\nI₄ = (3/4)·(1/2)·(π/2) = 3π/16')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 计算 ∫₀¹ x·eˣ dx\n\n2. 计算 ∫₁^e ln x dx\n\n3. 计算 ∫₀^(π/4) x·sec²x dx\n\n4. 计算 ∫₀^π x·cos x dx\n\n5. 用区间再现计算 ∫₀^(π/2) sin²x dx\n\n6. 计算 ∫₀¹ x²·eˣ dx (两次分部积分)\n\n7. 计算 ∫₁^e (ln x)² dx\n\n8. 计算 ∫₀^(π/2) sin³x dx')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 定积分分部积分:∫ₐᵇ udv = [uv]ₐᵇ - ∫ₐᵇ vdu\n• 选择原则:"反对幂三指"\n• 区间再现: ∫f(x)dx = ∫f(a+b-x)dx\n• 递推公式:建立 Iₙ 与 Iₙ₋₂ 的关系\n• 华里士公式:三角幂次积分\n• 分部积分+区间再现 = 强大组合\n• 记得代上下限!')
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
