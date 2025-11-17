import router from '@ohos.router';

@Entry
@Component
struct LimitOperations {
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

        Text('极限的运算法则')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 极限的四则运算')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('如果两个极限都存在，可以进行四则运算。')
            .fontSize(16)
            .lineHeight(24)

          Text('1️⃣ 加法法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')

          Column({ space: 8 }) {
            Text('lim[f(x) + g(x)] = lim f(x) + lim g(x)')
              .fontSize(15)
              .fontFamily('monospace')
            Text('极限的和 = 和的极限')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('2️⃣ 减法法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')

          Column({ space: 8 }) {
            Text('lim[f(x) - g(x)] = lim f(x) - lim g(x)')
              .fontSize(15)
              .fontFamily('monospace')
            Text('极限的差 = 差的极限')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('3️⃣ 乘法法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')

          Column({ space: 8 }) {
            Text('lim[f(x) × g(x)] = lim f(x) × lim g(x)')
              .fontSize(15)
              .fontFamily('monospace')
            Text('极限的积 = 积的极限')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('4️⃣ 除法法则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Column({ space: 8 }) {
            Text('lim[f(x) / g(x)] = lim f(x) / lim g(x)')
              .fontSize(15)
              .fontFamily('monospace')
            Text('前提：lim g(x) ≠ 0')
              .fontSize(14)
              .fontColor('#D32F2F')
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E3F2FD')
          .borderRadius(8)

          Text('💡 例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('已知：lim f(x) = 3, lim g(x) = 2')
              .fontSize(15)

            Divider().margin({ top: 4, bottom: 4 })

            Text('求：lim[2f(x) + 3g(x)] = ?')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('解：= 2×lim f(x) + 3×lim g(x)')
              .fontSize(14)
            Text('   = 2×3 + 3×2 = 12')
              .fontSize(14)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('⭐ 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#D32F2F')
            .margin({ top: 16 })

          Column({ space: 8 }) {
            Text('• 极限可以进行四则运算')
              .fontSize(15)
            Text('• 前提是各个极限都存在')
              .fontSize(15)
            Text('• 除法时分母极限不能为0')
              .fontSize(15)
            Text('• 常数可以提到极限符号外')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFEBEE')
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
