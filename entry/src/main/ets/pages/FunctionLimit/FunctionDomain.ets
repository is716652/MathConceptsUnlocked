import router from '@ohos.router';

@Entry
@Component
struct FunctionDomain {
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

        Text('函数定义域')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 什么是定义域？')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('定义域就是函数的"允许输入范围"，也就是 x 可以取哪些值。')
            .fontSize(16)
            .lineHeight(24)

          Text('🎯 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Text('想象一台机器的使用说明：\n• 机器只能处理特定类型的输入\n• 比如计算器不能对负数开平方\n• 定义域就是"哪些输入是合法的"\n• 超出定义域的输入会导致错误')
            .fontSize(15)
            .lineHeight(24)

          Text('📝 常见限制条件')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('1. 分式函数：分母不能为 0')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('2. 开偶次方：根号内必须 ≥ 0')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('3. 对数函数：真数必须 > 0')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('4. 正切函数：角度不能是 π/2 + kπ')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('💡 求定义域的例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('例1：分式函数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('y = 1/(x - 2)')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('定义域：x ≠ 2（因为分母不能为0）')
              .fontSize(14)
              .fontColor('#666666')

            Divider().margin({ top: 8, bottom: 8 })

            Text('例2：根式函数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('y = √(x - 3)')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('定义域：x ≥ 3（因为根号内必须≥0）')
              .fontSize(14)
              .fontColor('#666666')

            Divider().margin({ top: 8, bottom: 8 })

            Text('例3：组合函数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('y = √(x - 1) / (x - 2)')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('定义域：x ≥ 1 且 x ≠ 2')
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
            Text('• 定义域是自变量 x 的取值范围')
              .fontSize(15)
            Text('• 要考虑所有限制条件')
              .fontSize(15)
            Text('• 分母不能为 0，根号内≥0')
              .fontSize(15)
            Text('• 多个条件要同时满足')
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
