import router from '@ohos.router';
@Entry
@Component
struct PositiveSeries {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({ left: 12, right: 12, top: 6, bottom: 6 }).onClick(() => router.back())
        Text('正项级数').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({ left: 8, right: 8, top: 4, bottom: 4 })
      Scroll() {
        Column({ space: 16 }) {
          Text('正项级数').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('正项级数:每项都≥0的级数,Σuₙ(uₙ≥0)。\n\n正项级数收敛的充要条件:部分和数列{Sₙ}有界。').fontSize(15).lineHeight(24)
          Text('📌 比较判别法').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('设Σuₙ和Σvₙ都是正项级数,且uₙ≤vₙ:\n\n• 若Σvₙ收敛,则Σuₙ收敛\n• 若Σuₙ发散,则Σvₙ发散\n\n记忆:"小收大收,大发小发"').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('例1: 判断Σ1/n²的收敛性\n\n1/n² < 1/n(n-1) = 1/(n-1) - 1/n\n\nΣ[1/(n-1) - 1/n]收敛(裂项相消)\n\n所以Σ1/n²收敛').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#FFECB3').borderRadius(8)
          Text('📌 比值判别法(达朗贝尔判别法)').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('设Σuₙ是正项级数,ρ = lim(uₙ₊₁/uₙ):\n\n• ρ < 1,级数收敛\n• ρ > 1(或∞),级数发散\n• ρ = 1,判别法失效').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('例2: 判断Σnⁿ/n!的收敛性\n\nuₙ = nⁿ/n!\n\nuₙ₊₁/uₙ = (n+1)^(n+1)/(n+1)! · n!/nⁿ\n        = (n+1)ⁿ/nⁿ = (1+1/n)ⁿ → e > 1\n\n所以级数发散').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#C8E6C9').borderRadius(8)
          Text('📌 根值判别法(柯西判别法)').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#9C27B0')
          Text('设Σuₙ是正项级数,ρ = lim ⁿ√uₙ:\n\n• ρ < 1,级数收敛\n• ρ > 1,级数发散\n• ρ = 1,判别法失效').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#F3E5F5').borderRadius(8)
          Text('例3: 判断Σ(2n/(3n+1))ⁿ的收敛性\n\nuₙ = (2n/(3n+1))ⁿ\n\nⁿ√uₙ = 2n/(3n+1) = 2/(3+1/n) → 2/3 < 1\n\n所以级数收敛').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#E1BEE7').borderRadius(8)
          Text('🎯 p-级数').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('Σ1/nᵖ:\n\n• p > 1,收敛\n• p ≤ 1,发散\n\n特别地:\np=1: 调和级数,发散\np=2: Σ1/n² = π²/6,收敛').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#FFEBEE').borderRadius(8)
          Text('🎯 练习题').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('1. 判断Σ1/n³的收敛性\n2. 判断Σ2ⁿ/n!的收敛性(比值)\n3. 判断Σ(n/2n+1)ⁿ的收敛性(根值)\n4. 判断Σ1/√n的收敛性\n5. 判断Σn/(n²+1)的收敛性\n6. 判断Σ(1/2)ⁿ/n的收敛性').fontSize(15).lineHeight(28).padding(12).backgroundColor('#FFF8E1').borderRadius(8)
          Text('💭 小结').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 正项级数:uₙ≥0\n• 比较判别法:与已知级数比较\n• 比值判别法:求lim(uₙ₊₁/uₙ)\n• 根值判别法:求lim ⁿ√uₙ\n• p-级数:p>1收敛,p≤1发散\n• 选择判别法:含n!用比值,含nⁿ用根值').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
