import router from '@ohos.router';

@Entry
@Component
struct Neighborhood {
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

        Text('邻域')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 什么是邻域？')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('邻域是一个点周围的"小范围"，用来描述这个点附近的区域。')
            .fontSize(16)
            .lineHeight(24)

          Text('🎯 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Text('想象你站在数轴上的某个位置：\n• 你的位置是点 a\n• 你周围半径 δ 的范围就是邻域\n• 比如你周围1米的范围\n• 这个范围内的所有点都在你的邻域里')
            .fontSize(15)
            .lineHeight(24)

          Text('📝 数学定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('点 a 的 δ 邻域：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('U(a, δ) = {x | |x - a| < δ}')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('• a 是中心点')
              .fontSize(15)
            Text('• δ（delta）是邻域半径')
              .fontSize(15)
            Text('• |x - a| < δ 表示 x 到 a 的距离小于 δ')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('💡 具体例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('例1：点 0 的邻域')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('U(0, 1) = {x | |x| < 1}')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('说明：这表示 -1 < x < 1 的范围')
              .fontSize(14)
              .fontColor('#666666')

            Divider().margin({ top: 8, bottom: 8 })

            Text('例2：点 2 的邻域')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('U(2, 0.5) = {x | |x - 2| < 0.5}')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('说明：这表示 1.5 < x < 2.5 的范围')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('⭐ 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')
            .margin({ top: 16 })

          Column({ space: 8 }) {
            Text('• 邻域是点周围的小范围')
              .fontSize(15)
            Text('• 用 U(a, δ) 表示')
              .fontSize(15)
            Text('• δ 是邻域的半径')
              .fontSize(15)
            Text('• 邻域在极限定义中非常重要')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E3F2FD')
          .borderRadius(8)
        }
        .width('100%')
        .padding({ left: 12, right: 12, top: 12, bottom: 12 })
        .alignItems(HorizontalAlign.Start)
      }
      .layoutWeight(1)
      .scrollBar(BarState.On)
      .edgeEffect(EdgeEffect.Spring)
      .align(Alignment.Top)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .backgroundColor('#FFFFFF')
  }
}
