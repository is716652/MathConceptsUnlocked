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
          Text('📚 函数与极限学习指南')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')
            .textAlign(TextAlign.Start)
            .margin({ top: 8 })

          Text('函数是数学的基础,极限是微积分的灵魂。掌握这一章,为后续学习打下坚实基础!')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .textAlign(TextAlign.Start)
            .padding(12)
            .backgroundColor('#E3F2FD')
            .borderRadius(8)

          Column() {
            Text('第1章 集合的概念')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('集合运算、区间表示')
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
            router.pushUrl({ url: 'pages/FunctionLimit/SetConcept' });
          })

          Column() {
            Text('第2章 函数的概念')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('定义、表示方法、分段函数')
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
            router.pushUrl({ url: 'pages/FunctionLimit/FunctionConcept' });
          })

          Column() {
            Text('第3章 邻域')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('点的邻域、去心邻域')
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
            router.pushUrl({ url: 'pages/FunctionLimit/Neighborhood' });
          })

          Column() {
            Text('第4章 函数定义域')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('自然定义域、复合函数定义域')
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
            router.pushUrl({ url: 'pages/FunctionLimit/FunctionDomain' });
          })

          Column() {
            Text('第5章 函数的性质')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('奇偶性、单调性、周期性、有界性')
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
            router.pushUrl({ url: 'pages/FunctionLimit/FunctionProperties' });
          })

          Column() {
            Text('第6章 反函数与复合函数')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('反函数性质、复合函数运算')
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
            router.pushUrl({ url: 'pages/FunctionLimit/InverseAndComposite' });
          })

          Column() {
            Text('第7章 基本初等函数')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('幂函数、指数函数、对数函数、三角函数')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#E8EAF6')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#5C6BC0')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/FunctionLimit/ElementaryFunctions' });
          })

          Column() {
            Text('第8章 函数的极限')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('数列极限、函数极限、单侧极限')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#E0F2F1')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#26A69A')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/FunctionLimit/LimitConcept' });
          })

          Column() {
            Text('第9章 极限的运算法则')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('四则运算、复合函数极限')
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
            router.pushUrl({ url: 'pages/FunctionLimit/LimitOperations' });
          })

          Column() {
            Text('第10章 极限存在准则')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('夹逼准则、单调有界准则')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#F1F8E9')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#9CCC65')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/FunctionLimit/LimitCriteria' });
          })

          Column() {
            Text('第11章 无穷小与无穷大')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('等价无穷小、无穷小比较、重要极限')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#FFF9C4')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#FFCA28')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
          .onClick(() => {
            router.pushUrl({ url: 'pages/FunctionLimit/InfinitesimalAndInfinite' });
          })

          Column() {
            Text('第12章 函数的连续性')
              .width('100%')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Start)
              .fontColor('#FFFFFF')
            Text('连续性定义、间断点分类、闭区间性质')
              .width('100%')
              .fontSize(13)
              .textAlign(TextAlign.Start)
              .fontColor('#FFCCBC')
              .margin({ top: 4 })
          }
          .width('100%')
          .padding(16)
          .backgroundColor('#FF7043')
          .borderRadius(12)
          .alignItems(HorizontalAlign.Start)
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
