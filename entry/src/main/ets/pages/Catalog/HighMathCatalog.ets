import router from '@ohos.router';
@Entry
@Component
struct HighMathCatalog {
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

        Text('高等数学')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column() {
          Row() {
            Button('函数与极限').layoutWeight(1)
              .fontSize(16)
              .borderRadius(12)
              .backgroundColor('#42A5F5')
              .padding(16)

            Button('导数与微分').layoutWeight(1)
              .margin({ left: 8 })
              .fontSize(16)
              .borderRadius(12)
              .backgroundColor('#66BB6A')
              .padding(16)
          }
          .width('100%')

          Row() {
            Button('不定积分').layoutWeight(1)
              .fontSize(16)
              .borderRadius(12)
              .backgroundColor('#FFA726')
              .padding(16)

            Button('定积分').layoutWeight(1)
              .margin({ left: 8 })
              .fontSize(16)
              .borderRadius(12)
              .backgroundColor('#AB47BC')
              .padding(16)
          }
          .width('100%')

          Row() {
            Button('级数').layoutWeight(1)
              .fontSize(16)
              .borderRadius(12)
              .backgroundColor('#EC407A')
              .padding(16)

            Button('微分方程').layoutWeight(1)
              .margin({ left: 8 })
              .fontSize(16)
              .borderRadius(12)
              .backgroundColor('#7E57C2')
              .padding(16)
          }
          .width('100%')
          .justifyContent(FlexAlign.Start)
        }
        .width('100%')
        .padding({ left: 12, right: 12, bottom: 12 })
      }
      .layoutWeight(1)
      .scrollBar(BarState.On)
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .backgroundColor('#FFFFFF')
  }
}