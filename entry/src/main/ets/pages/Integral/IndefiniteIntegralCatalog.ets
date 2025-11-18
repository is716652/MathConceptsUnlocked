import router from '@ohos.router';

@Entry
@Component
struct IndefiniteIntegralCatalog {
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

        Text('不定积分')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 12 }) {
          Button('第1章 不定积分的概念')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#42A5F5')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/IntegralConcept' });
            })

          Button('第2章 基本积分公式')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#66BB6A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/BasicIntegralFormulas' });
            })

          Button('第3章 换元积分法—第一类换元')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#FFA726')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/FirstSubstitution' });
            })

          Button('第4章 换元积分法—第二类换元')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#AB47BC')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/SecondSubstitution' });
            })

          Button('第5章 分部积分法')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#EC407A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/IntegrationByParts' });
            })

          Button('第6章 有理函数积分')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#7E57C2')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/RationalFunctions' });
            })

          Button('第7章 三角函数积分')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#26C6DA')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/TrigonometricIntegrals' });
            })

          Button('第8章 积分技巧与综合应用')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#8D6E63')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Integral/IntegrationTechniques' });
            })
        }
        .width('100%')
        .padding({ left: 12, right: 12, top: 12, bottom: 12 })
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
