import router from '@ohos.router';

interface Chapter {
  title: string;
  description: string;
  route: string;
  color: string;
}

@Entry
@Component
struct IndefiniteIntegralCatalog {
  private chapters: Array<Chapter> = [
    {
      title: '第1章 不定积分的概念',
      description: '原函数定义、不定积分性质、积分与导数的关系',
      route: 'pages/Integral/IntegralConcept',
      color: '#42A5F5'
    },
    {
      title: '第2章 基本积分公式',
      description: '幂函数、指数函数、三角函数、反三角函数积分公式',
      route: 'pages/Integral/BasicIntegralFormulas',
      color: '#66BB6A'
    },
    {
      title: '第3章 换元积分法—第一类换元',
      description: '凑微分法、复合函数积分、常见凑微分模式',
      route: 'pages/Integral/FirstSubstitution',
      color: '#FFA726'
    },
    {
      title: '第4章 换元积分法—第二类换元',
      description: '三角代换、根式代换、倒代换消根号技巧',
      route: 'pages/Integral/SecondSubstitution',
      color: '#AB47BC'
    },
    {
      title: '第5章 分部积分法',
      description: '反对幂三指口诀、循环分部积分、二次分部积分',
      route: 'pages/Integral/IntegrationByParts',
      color: '#EC407A'
    },
    {
      title: '第6章 有理函数积分',
      description: '部分分式展开、假分式化真分式、待定系数法',
      route: 'pages/Integral/RationalFunctions',
      color: '#7E57C2'
    },
    {
      title: '第7章 三角函数积分',
      description: '降幂公式、万能代换、三角恒等变换技巧',
      route: 'pages/Integral/TrigonometricIntegrals',
      color: '#26C6DA'
    },
    {
      title: '第8章 积分技巧与综合应用',
      description: '方法选择流程、综合例题、常见错误分析',
      route: 'pages/Integral/IntegrationTechniques',
      color: '#8D6E63'
    }
  ];

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
          ForEach(this.chapters, (chapter: Chapter, index: number) => {
            Column() {
              Text(chapter.title)
                .width('100%')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#FFFFFF')
                .textAlign(TextAlign.Start)
                .margin({ bottom: 6 })

              Text(chapter.description)
                .width('100%')
                .fontSize(13)
                .fontColor('#FFFFFF')
                .opacity(0.9)
                .textAlign(TextAlign.Start)
                .lineHeight(20)
            }
            .width('100%')
            .padding(16)
            .backgroundColor(chapter.color)
            .borderRadius(12)
            .onClick(() => {
              router.pushUrl({ url: chapter.route });
            })
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
