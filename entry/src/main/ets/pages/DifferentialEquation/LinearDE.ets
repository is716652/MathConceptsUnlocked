import router from '@ohos.router';
@Entry
@Component
struct FirstOrderDE {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('微分方程的概念').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({space:16}) {
          Text('什么是微分方程?').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('含有未知函数的导数的方程称为微分方程。').fontSize(15).lineHeight(24)
          Text('📌 基本概念').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('微分方程:F(x,y,y\',y\'\'...)=0\n\n阶:最高阶导数的阶数\n解:使方程成立的函数\n通解:含有任意常数的解\n特解:确定常数后的解\n初值条件:确定常数的条件').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('例1: y\'=2x是一阶微分方程\n\n通解:y=x²+C\n初值条件:y(0)=1\n特解:y=x²+1').fontSize(14).lineHeight(22).fontFamily('monospace').padding(12).backgroundColor('#FFECB3').borderRadius(8)
          Text('📌 一阶微分方程').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('形式:dy/dx=f(x,y)或y\'=f(x,y)\n\n类型:\n1️⃣ 可分离变量:g(y)dy=f(x)dx\n2️⃣ 齐次方程:y\'=φ(y/x)\n3️⃣ 线性方程:y\'+P(x)y=Q(x)').fontSize(14).lineHeight(24).fontFamily('monospace').padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('🎯 练习题').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('1. 判断y\'\'  +2y\'+y=0的阶数\n2. 验证y=Ce^x是y\'=y的解\n3. 求y\'=3x²,y(0)=1的特解\n4. 判断方程y\'=x+y的类型').fontSize(15).lineHeight(28).padding(12).backgroundColor('#FFF8E1').borderRadius(8)
          Text('💭 小结').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 微分方程:含导数的方程\n• 通解:含任意常数C\n• 特解:满足初值条件\n• 一阶方程:y\'=f(x,y)').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
