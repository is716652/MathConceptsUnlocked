import router from '@ohos.router';

@Entry
@Component
struct SeriesConcept {
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

        Text('数项级数的概念')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('什么是级数?')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('级数就是把无穷多个数加起来:\nu₁ + u₂ + u₃ + ... + uₙ + ...\n\n问题:无限多个数相加,会等于多少?有限?无限?')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 级数的定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('给定数列 {uₙ},表达式:\n\nΣuₙ = u₁ + u₂ + u₃ + ... + uₙ + ...\n   n=1\n\n称为(无穷)级数,uₙ 称为通项。\n\n部分和:Sₙ = u₁ + u₂ + ... + uₙ')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🔍 收敛与发散')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('若 lim(n→∞) Sₙ = S (有限数),则:\n• 称级数收敛,S 是级数的和\n• 记作:Σuₙ = S\n\n若 lim(n→∞) Sₙ 不存在或为无穷,则:\n• 称级数发散')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📚 经典例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 几何级数 Σarⁿ⁻¹ = a + ar + ar² + ...\n\nS₁ = a\nS₂ = a + ar\nS₃ = a + ar + ar²\n...\nSₙ = a(1-rⁿ)/(1-r)  (r≠1)\n\n当|r| < 1 时:\nlim Sₙ = a/(1-r) → 收敛\n\n当|r| ≥ 1 时:\nlim Sₙ 不存在 → 发散\n\n结论:几何级数 Σarⁿ⁻¹\n• |r|<1 收敛,和为 a/(1-r)\n• |r|≥1 发散')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 调和级数 Σ(1/n) = 1 + 1/2 + 1/3 + ...\n\n虽然 uₙ=1/n→0,但级数发散!\n\n证明:\nS₂ = 1 + 1/2\nS₄ = 1 + 1/2 + (1/3+1/4) > 1 + 1/2 + 1/2\nS₈ > 1 + 1/2 + 1/2 + 1/2\n...\n\nSₙ → ∞,所以调和级数发散。')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('💡 级数的性质')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('性质1:线性性质\n若Σuₙ=A, Σvₙ=B,则:\n• Σ(uₙ±vₙ) = A±B\n• Σkuₙ = kA  (k≠0)\n\n性质2:改变有限项不影响收敛性\n去掉、增加、改变有限项,不改变级数的收敛性\n(但可能改变和)\n\n性质3:收敛的必要条件\n若Σuₙ收敛,则 lim uₙ = 0\n\n逆否命题:若 lim uₙ ≠ 0,则Σuₙ发散\n\n注意:lim uₙ = 0 不能保证收敛!\n(反例:调和级数)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例3: 判断 Σn/(n+1) 的收敛性\n\n解:\nlim n/(n+1) = lim 1/(1+1/n) = 1 ≠ 0\n\n所以级数发散。')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('💭 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('想象你每天存钱:\n\n几何级数(|r|<1):\n第1天存1元,第2天0.5元,第3天0.25元...\n虽然无限存,但总额有限(2元)\n\n调和级数:\n第1天存1元,第2天0.5元,第3天0.33元...\n虽然越存越少,但总额无限!\n\n关键:项的减小速度决定级数收敛性')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 判断Σ(1/2)ⁿ的收敛性,若收敛求和\n\n2. 判断Σ(2/3)ⁿ⁻¹的收敛性,若收敛求和\n\n3. 判断Σ1/(n²+1)的收敛性(用必要条件)\n\n4. 判断Σn²/(n²+1)的收敛性\n\n5. 求Σ[1/(n(n+1))]的和(提示:裂项)\n\n6. 已知Σuₙ=3, Σvₙ=5,求Σ(2uₙ-3vₙ)\n\n7. Σ(0.9)ⁿ收敛吗?和是多少?\n\n8. 为什么lim uₙ=0不能保证级数收敛?')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 级数:无穷个数相加Σuₙ\n• 收敛:部分和Sₙ有极限\n• 几何级数:|r|<1收敛,和=a/(1-r)\n• 调和级数:Σ(1/n)发散\n• 必要条件:收敛⇒lim uₙ=0\n• lim uₙ≠0⇒发散(逆否命题)\n• lim uₙ=0不能推出收敛!')
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
