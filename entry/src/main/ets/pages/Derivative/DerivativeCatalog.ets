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
          Text('📐 导数与微分学习指南')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')
            .textAlign(TextAlign.Start)
            .margin({ top: 8 })

          Text('导数是研究函数变化率的工具,是微积分的核心。从几何意义到计算技巧,从基本公式到复杂求导,系统掌握导数理论!')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .textAlign(TextAlign.Start)
            .padding(12)
            .backgroundColor('#E3F2FD')
            .borderRadius(8)

          Column() {
            Text('第1章 导数的概念')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('变化率、导数定义、可导性')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#E3F2FD')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#42A5F5')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/DerivativeConcept' });
          })

          Column() {
            Text('第2章 导数的几何意义')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('切线方程、法线方程')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#E8F5E9')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#66BB6A')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/GeometricMeaning' });
          })

          Column() {
            Text('第3章 基本求导公式')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('常数、幂函数、指数、对数、三角函数')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#FFF3E0')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#FFA726')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/BasicFormulas' });
          })

          Column() {
            Text('第4章 四则运算求导法则')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('和差积商求导法则')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#F3E5F5')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#AB47BC')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/ArithmeticRules' });
          })

          Column() {
            Text('第5章 复合函数求导法则')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('链式法则、多层复合求导')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#FCE4EC')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#EC407A')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/ChainRule' });
          })

          Column() {
            Text('第6章 隐函数与参数方程求导')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('隐函数求导、参数方程求导')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#EDE7F6')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#7E57C2')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/ImplicitAndParametric' });
          })

          Column() {
            Text('第7章 高阶导数')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('二阶导数、n阶导数、莱布尼茨公式')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#E0F7FA')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#26C6DA')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/HigherDerivatives' });
          })

          Column() {
            Text('第8章 微分及其应用')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('微分定义、微分运算、近似计算')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#EFEBE9')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#8D6E63')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/Derivative/Differential' });
          })
        }
        .width('100%')
        .padding({ left: 12, right: 12, top: 12, bottom: 12 })
        .alignItems(HorizontalAlign.Start)
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
