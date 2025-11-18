import router from '@ohos.router';
@Entry
@Component
struct SeriesApplications {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('级数的应用').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({ space: 16 }) {
          Text('级数的综合应用').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('级数在近似计算、求和、求积分等方面有重要应用。').fontSize(15).lineHeight(24)
          Text('📌 近似计算').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('利用级数前几项近似:\n\neˣ≈1+x+x²/2+x³/6(x较小时)\nsin x≈x-x³/6(x较小时)\nln(1+x)≈x-x²/2+x³/3(|x|<1)').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('例1: 计算√e的近似值(精确到0.001)\n\ne^(1/2)=1+1/2+(1/2)²/2!+(1/2)³/3!+...\n      =1+0.5+0.125+0.021+...\n      ≈1.646').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#FFECB3').borderRadius(8)
          Text('📌 求和').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('利用已知级数展开式求和。').fontSize(14).lineHeight(24).padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('例2: 求Σxⁿ/n,|x|<1\n\nln(1+x)=x-x²/2+x³/3-x⁴/4+...\nln(1-x)=-x-x²/2-x³/3-x⁴/4-...\n\nln[(1+x)/(1-x)]=2(x+x³/3+x⁵/5+...)\n\n所以Σx^(2n-1)/(2n-1)=(1/2)ln[(1+x)/(1-x)]').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#C8E6C9').borderRadius(8)
          Text('📌 求积分').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#9C27B0')
          Text('将被积函数展开成级数,逐项积分。').fontSize(14).lineHeight(24).padding(12).backgroundColor('#F3E5F5').borderRadius(8)
          Text('例3: 求∫₀¹ sin x/x dx\n\nsin x/x=(x-x³/3!+x⁵/5!-...)/x\n        =1-x²/3!+x⁴/5!-...\n\n∫₀¹ sin x/x dx=∫₀¹(1-x²/6+x⁴/120-...)dx\n              =[x-x³/18+x⁵/600-...]₀¹\n              =1-1/18+1/600-...\n              ≈0.946').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#E1BEE7').borderRadius(8)
          Text('🎯 练习题').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('1. 用级数计算cos 1的近似值(3项)\n2. 求Σn·2ⁿ的和\n3. 计算∫₀^0.5 e^(-x²)dx(3项)\n4. 用级数证明e是无理数\n5. 求Σ1/(n(n+1))的和').fontSize(15).lineHeight(28).padding(12).backgroundColor('#FFF8E1').borderRadius(8)
          Text('💭 小结').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 近似计算:取前几项\n• 求和:展开+代入\n• 求积分:展开+逐项积分\n• 级数是强大的计算工具').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
