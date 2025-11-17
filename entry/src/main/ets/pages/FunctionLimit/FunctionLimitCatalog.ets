import router from '@ohos.router';

@Entry
@Component
struct FunctionLimitCatalog {
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

        Text('函数与极限')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 12 }) {
          Button('1. 集合的概念')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#42A5F5')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/SetConcept' });
            })

          Button('2. 函数的概念')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#66BB6A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/FunctionConcept' });
            })

          Button('3. 邻域')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#FFA726')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/Neighborhood' });
            })

          Button('4. 函数定义域')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#AB47BC')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/FunctionDomain' });
            })

          Button('5. 函数的性质')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#EC407A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/FunctionProperties' });
            })

          Button('6. 反函数与复合函数')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#7E57C2')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/InverseAndComposite' });
            })

          Button('7. 基本初等函数')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#5C6BC0')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/ElementaryFunctions' });
            })

          Button('8. 函数的极限')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#26A69A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/LimitConcept' });
            })

          Button('9. 极限的运算法则')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#66BB6A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/LimitOperations' });
            })

          Button('10. 极限存在准则')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#9CCC65')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/LimitCriteria' });
            })

          Button('11. 无穷小与无穷大')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#FFCA28')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/InfinitesimalAndInfinite' });
            })

          Button('12. 函数的连续性')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#FF7043')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/FunctionLimit/Continuity' });
            })
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
