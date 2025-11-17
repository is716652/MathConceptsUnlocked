import router from '@ohos.router';

@Entry
@Component
struct DerivativeCatalog {
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

        Text('导数与微分')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 12 }) {
          Button('第1章 导数的概念')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#42A5F5')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/DerivativeConcept' });
            })

          Button('第2章 导数的几何意义')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#66BB6A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/GeometricMeaning' });
            })

          Button('第3章 基本求导公式')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#FFA726')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/BasicFormulas' });
            })

          Button('第4章 四则运算求导法则')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#AB47BC')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/ArithmeticRules' });
            })

          Button('第5章 复合函数求导法则')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#EC407A')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/ChainRule' });
            })

          Button('第6章 隐函数与参数方程求导')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#7E57C2')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/ImplicitAndParametric' });
            })

          Button('第7章 高阶导数')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#26C6DA')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/HigherDerivatives' });
            })

          Button('第8章 微分及其应用')
            .width('100%')
            .fontSize(16)
            .borderRadius(12)
            .backgroundColor('#8D6E63')
            .padding(16)
            .onClick(() => {
              router.pushUrl({ url: 'pages/Derivative/Differential' });
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
