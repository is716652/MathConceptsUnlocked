import router from '@ohos.router';

@Entry
@Component
struct FunctionConcept {
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

        Text('函数的概念')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 什么是函数？')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('函数是数学中最重要的概念之一。简单来说，函数描述了两个变量之间的对应关系。')
            .fontSize(16)
            .lineHeight(24)

          Text('🎯 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Text('想象一个自动售货机：\n• 你投入硬币（输入x）\n• 机器给你商品（输出y）\n• 每次投入相同金额，得到相同商品\n• 这就是函数关系！')
            .fontSize(15)
            .lineHeight(24)

          Text('📝 数学定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('y = f(x)')
              .fontSize(18)
              .fontFamily('monospace')
              .fontWeight(FontWeight.Bold)

            Text('• x 叫做自变量（输入）')
              .fontSize(15)
            Text('• y 叫做因变量（输出）')
              .fontSize(15)
            Text('• f 表示对应法则')
              .fontSize(15)
            Text('• 每个 x 只能对应一个 y')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('💡 常见函数例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('例1：一次函数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('y = 2x + 1')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('说明：x 每增加1，y 就增加2')
              .fontSize(14)
              .fontColor('#666666')

            Divider().margin({ top: 8, bottom: 8 })

            Text('例2：二次函数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('y = x²')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('说明：输出是输入的平方')
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
            Text('• 函数表达了输入和输出的对应关系')
              .fontSize(15)
            Text('• 用 y = f(x) 表示')
              .fontSize(15)
            Text('• 每个 x 值对应唯一的 y 值')
              .fontSize(15)
            Text('• 函数是数学的基础工具')
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
