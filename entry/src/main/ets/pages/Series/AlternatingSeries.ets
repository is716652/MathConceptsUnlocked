import router from '@ohos.router';
@Entry
@Component
struct AlternatingSeries {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('交错级数').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({ space: 16 }) {
          Text('交错级数').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('交错级数:正负项交替出现,Σ(-1)ⁿuₙ或Σ(-1)ⁿ⁻¹uₙ。').fontSize(15).lineHeight(24)
          Text('📌 莱布尼茨判别法').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('设Σ(-1)ⁿ⁻¹uₙ满足:\n1️⃣ uₙ≥uₙ₊₁(单调递减)\n2️⃣ lim uₙ=0\n\n则级数收敛,且余项|Rₙ|≤uₙ₊₁').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('例1: 判断Σ(-1)ⁿ⁻¹/n的收敛性\n\n1/n单调递减且lim 1/n=0\n满足莱布尼茨条件,收敛').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#FFECB3').borderRadius(8)
          Text('📌 绝对收敛与条件收敛').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('设Σuₙ:\n• 若Σ|uₙ|收敛,称Σuₙ绝对收敛\n• 若Σuₙ收敛但Σ|uₙ|发散,称条件收敛\n\n定理:绝对收敛⇒收敛').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('例2: Σ(-1)ⁿ⁻¹/n²\n\nΣ|(-1)ⁿ⁻¹/n²|=Σ1/n²收敛(p=2>1)\n\n所以原级数绝对收敛').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#C8E6C9').borderRadius(8)
          Text('例3: Σ(-1)ⁿ⁻¹/n\n\nΣ|(-1)ⁿ⁻¹/n|=Σ1/n发散(调和级数)\n但Σ(-1)ⁿ⁻¹/n收敛(莱布尼茨)\n\n所以原级数条件收敛').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#A5D6A7').borderRadius(8)
          Text('🎯 练习题').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('1. 判断Σ(-1)ⁿ/√n的收敛性\n2. 判断Σ(-1)ⁿ⁻¹/n³是绝对收敛还是条件收敛\n3. 判断Σ(-1)ⁿ·n/(n+1)的收敛性\n4. 判断Σ(-1)ⁿ/(2n+1)的收敛性\n5. 判断Σ(-1)ⁿ⁻¹·ln n/n的收敛性').fontSize(15).lineHeight(28).padding(12).backgroundColor('#FFF8E1').borderRadius(8)
          Text('💭 小结').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 交错级数:正负交替\n• 莱布尼茨判别法:单调递减+趋于0\n• 绝对收敛:Σ|uₙ|收敛\n• 条件收敛:Σuₙ收敛但Σ|uₙ|发散\n• 绝对收敛⇒收敛').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
