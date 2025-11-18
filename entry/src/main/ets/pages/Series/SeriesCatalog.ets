import router from '@ohos.router';

interface Chapter {
  title: string;
  description: string;
  route: string;
  color: string;
}

@Entry
@Component
struct SeriesCatalog {
  private chapters: Array<Chapter> = [
    { title: '第1章 数项级数的概念', description: '级数定义、收敛与发散、级数性质', route: 'pages/Series/SeriesConcept', color: '#42A5F5' },
    { title: '第2章 正项级数', description: '比较判别法、比值判别法、根值判别法', route: 'pages/Series/PositiveSeries', color: '#66BB6A' },
    { title: '第3章 交错级数', description: '莱布尼茨判别法、绝对收敛与条件收敛', route: 'pages/Series/AlternatingSeries', color: '#FFA726' },
    { title: '第4章 幂级数', description: '收敛半径、收敛域、幂级数性质', route: 'pages/Series/PowerSeries', color: '#AB47BC' },
    { title: '第5章 函数展开成幂级数', description: '泰勒级数、麦克劳林级数、常用展开式', route: 'pages/Series/TaylorSeries', color: '#EC407A' },
    { title: '第6章 傅里叶级数', description: '三角级数、傅里叶系数、狄利克雷条件', route: 'pages/Series/FourierSeries', color: '#7E57C2' },
    { title: '第7章 级数的综合应用', description: '近似计算、微分方程求解、积分计算', route: 'pages/Series/SeriesApplications', color: '#26A69A' },
    { title: '第8章 级数习题精讲', description: '判别法选择、综合题型、考研真题', route: 'pages/Series/SeriesExercises', color: '#5C6BC0' }
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

        Text('级数')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 12 }) {
          Text('📊 级数学习指南')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')
            .margin({ top: 8 })

          Text('级数是无限多个数相加,是从"有限"到"无限"的飞跃。掌握级数,你将理解函数的另一种表达方式,解决近似计算、周期函数分析等重要问题。')
            .fontSize(14)
            .lineHeight(22)
            .padding(12)
            .backgroundColor('#E3F2FD')
            .borderRadius(8)

          ForEach(this.chapters, (chapter: Chapter, index: number) => {
            Column() {
              Row() {
                Text(`${index + 1}`)
                  .fontSize(16)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#FFFFFF')
                  .width(32)
                  .height(32)
                  .textAlign(TextAlign.Center)
                  .backgroundColor(chapter.color)
                  .borderRadius(16)
                  .margin({ right: 12 })

                Column({ space: 4 }) {
                  Text(chapter.title)
                    .fontSize(16)
                    .fontWeight(FontWeight.Bold)

                  Text(chapter.description)
                    .fontSize(13)
                    .fontColor('#666666')
                }
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)
              }
              .width('100%')
            }
            .width('100%')
            .padding(12)
            .backgroundColor('#FFFFFF')
            .borderRadius(12)
            .shadow({ radius: 4, color: '#20000000', offsetY: 2 })
            .onClick(() => {
              router.pushUrl({ url: chapter.route });
            })
          })

          Text('🎯 学习要点')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')
            .margin({ top: 8 })

          Text('• 核心概念:Σuₙ = u₁+u₂+...+uₙ+...\n• 判别收敛:比较、比值、根值判别法\n• 重点难点:幂级数收敛域、函数展开\n• 应用广泛:近似计算、信号处理、量子力学')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)
        }
        .width('100%')
        .padding(12)
      }
      .layoutWeight(1)
      .scrollBar(BarState.On)
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}
