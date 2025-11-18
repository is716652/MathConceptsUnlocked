import router from '@ohos.router';
@Entry
@Component
struct FourierSeries {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('傅里叶级数').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({ space: 16 }) {
          Text('傅里叶级数').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('将周期函数展开成三角级数,在信号处理中应用广泛。').fontSize(15).lineHeight(24)
          Text('📌 三角级数').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('形如:\na₀/2 + Σ(aₙcos nx + bₙsin nx)\n\n的级数称为三角级数。').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('📌 傅里叶系数').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('设f(x)以2π为周期,则:\n\na₀=(1/π)∫₋π^π f(x)dx\n\naₙ=(1/π)∫₋π^π f(x)cos nx dx\n\nbₙ=(1/π)∫₋π^π f(x)sin nx dx\n\n展开式:\nf(x)=a₀/2+Σ(aₙcos nx+bₙsin nx)').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('例1: 将f(x)=x,x∈(-π,π)展开成傅里叶级数\n\n1️⃣ f(x)是奇函数,aₙ=0\n\n2️⃣ bₙ=(1/π)∫₋π^π x sin nx dx\n      =2/π∫₀^π x sin nx dx\n      =(2(-1)^(n+1))/n\n\n3️⃣ f(x)=2Σ[(-1)^(n+1)/n]sin nx\n      =2(sin x-sin 2x/2+sin 3x/3-...)').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#C8E6C9').borderRadius(8)
          Text('💡 狄利克雷条件').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#9C27B0')
          Text('若f(x)满足:\n1️⃣ 连续或只有有限个第一类间断点\n2️⃣ 只有有限个极值点\n\n则傅里叶级数收敛,且:\n• 连续点处:级数=f(x)\n• 间断点处:级数=[f(x⁻)+f(x⁺)]/2').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#F3E5F5').borderRadius(8)
          Text('🎯 练习题').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('1. 将f(x)=|x|,x∈[-π,π]展开成傅里叶级数\n2. 求f(x)={0,x∈[-π,0]; π,x∈(0,π]}的傅里叶级数\n3. 利用傅里叶级数求Σ1/n²\n4. 将周期为2L的函数展开').fontSize(15).lineHeight(28).padding(12).backgroundColor('#FFF8E1').borderRadius(8)
          Text('💭 小结').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 傅里叶级数:周期函数展开\n• 系数公式:aₙ,bₙ通过积分求\n• 奇函数:只有sin项\n• 偶函数:只有cos项\n• 应用:信号分析、热传导').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
