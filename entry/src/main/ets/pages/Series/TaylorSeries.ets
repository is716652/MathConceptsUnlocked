import router from '@ohos.router';
@Entry
@Component
struct TaylorSeries {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('函数展开成幂级数').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({ space: 16 }) {
          Text('泰勒级数').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('将函数表示成幂级数形式,是幂级数的重要应用。').fontSize(15).lineHeight(24)
          Text('📌 泰勒公式').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('若f(x)在x=x₀处有各阶导数:\n\nf(x)=f(x₀)+f\'(x₀)(x-x₀)+f\'\'(x₀)(x-x₀)²/2!+...\n   =Σf^(n)(x₀)(x-x₀)ⁿ/n!\n\n特别地,x₀=0时称麦克劳林级数:\nf(x)=Σf^(n)(0)xⁿ/n!').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('📌 常用展开式').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('1️⃣ eˣ=1+x+x²/2!+x³/3!+...\n\n2️⃣ sin x=x-x³/3!+x⁵/5!-...\n\n3️⃣ cos x=1-x²/2!+x⁴/4!-...\n\n4️⃣ ln(1+x)=x-x²/2+x³/3-...(|x|<1)\n\n5️⃣ 1/(1-x)=1+x+x²+x³+...(|x|<1)\n\n6️⃣ (1+x)ᵅ=1+αx+α(α-1)x²/2!+...(|x|<1)').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('例1: 将f(x)=1/(1+x)展开成幂级数\n\n1/(1+x)=1/[1-(-x)]\n      =1+(-x)+(-x)²+(-x)³+...\n      =1-x+x²-x³+...\n      =Σ(-1)ⁿxⁿ, |x|<1').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#C8E6C9').borderRadius(8)
          Text('例2: 求f(x)=eˣcos x的展开式前4项\n\neˣ=1+x+x²/2+x³/6+...\ncos x=1-x²/2+x⁴/24-...\n\neˣcos x=(1+x+x²/2+...)(1-x²/2+...)\n      =1+x+x²/2-x²/2-x³/2+...\n      =1+x-x³/3+...').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#A5D6A7').borderRadius(8)
          Text('🎯 练习题').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('1. 将1/(1-x)²展开成幂级数\n2. 将arctan x展开(提示:积分)\n3. 求eˣsin x的前3项\n4. 将ln(1+x²)展开\n5. 用级数计算e的近似值(取5项)').fontSize(15).lineHeight(28).padding(12).backgroundColor('#FFF8E1').borderRadius(8)
          Text('💭 小结').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 泰勒级数:f(x)=Σf^(n)(x₀)(x-x₀)ⁿ/n!\n• 麦克劳林级数:x₀=0\n• 常用展开式要熟记\n• 展开方法:直接法、间接法').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
