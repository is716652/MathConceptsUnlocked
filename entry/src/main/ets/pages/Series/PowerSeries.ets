import router from '@ohos.router';
@Entry
@Component
struct PowerSeries {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('幂级数').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({ space: 16 }) {
          Text('幂级数').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('幂级数:Σaₙxⁿ是函数级数的重要类型。').fontSize(15).lineHeight(24)
          Text('📌 收敛半径').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('幂级数在某区间内收敛,R称为收敛半径。').fontSize(14).lineHeight(24).padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('📌 收敛域').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('收敛域=收敛区间+端点收敛性').fontSize(14).lineHeight(24).padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('📌 幂级数的性质').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#9C27B0')
          Text('幂级数在收敛区间内连续、可逐项求导、可逐项积分。').fontSize(14).lineHeight(24).padding(12).backgroundColor('#F3E5F5').borderRadius(8)
          Text('🎯 练习题').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('1. 求收敛域\n2. 求收敛半径\n3. 求和函数').fontSize(15).lineHeight(28).padding(12).backgroundColor('#FFF8E1').borderRadius(8)
          Text('💭 小结').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 幂级数:Σaₙxⁿ\n• 收敛半径:R\n• 收敛域:讨论端点\n• 性质:连续、可求导积分').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
