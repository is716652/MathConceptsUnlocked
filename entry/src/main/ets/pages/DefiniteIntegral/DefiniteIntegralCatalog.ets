import router from '@ohos.router';

interface Chapter {
  title: string;
  description: string;
  route: string;
  color: string;
}

@Entry
@Component
struct DefiniteIntegralCatalog {
  private chapters: Array<Chapter> = [
    { title: '第1章 定积分的概念', description: '黎曼和、定积分定义、几何意义', route: 'pages/DefiniteIntegral/DefiniteIntegralConcept', color: '#42A5F5' },
    { title: '第2章 定积分的性质', description: '线性性质、区间可加性、比较定理、积分中值定理', route: 'pages/DefiniteIntegral/Properties', color: '#66BB6A' },
    { title: '第3章 微积分基本定理', description: '牛顿-莱布尼茨公式、原函数存在定理', route: 'pages/DefiniteIntegral/FundamentalTheorem', color: '#FFA726' },
    { title: '第4章 定积分的换元法', description: '换元公式、换限技巧、常用替换', route: 'pages/DefiniteIntegral/Substitution', color: '#AB47BC' },
    { title: '第5章 定积分的分部积分', description: '分部积分公式、区间再现、递推公式', route: 'pages/DefiniteIntegral/IntegrationByParts', color: '#EC407A' },
    { title: '第6章 反常积分', description: '无穷区间积分、无界函数积分、收敛判别', route: 'pages/DefiniteIntegral/ImproperIntegrals', color: '#7E57C2' },
    { title: '第7章 定积分的几何应用', description: '平面图形面积、旋转体体积、曲线弧长', route: 'pages/DefiniteIntegral/GeometricApplications', color: '#26A69A' },
    { title: '第8章 定积分的物理应用', description: '变力做功、液体压力、质心、引力', route: 'pages/DefiniteIntegral/PhysicalApplications', color: '#5C6BC0' }
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

        Text('定积分')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 12 }) {
          Text('📐 定积分学习指南')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')
            .margin({ top: 8 })

          Text('定积分是不定积分的"升级版",不仅能求原函数,还能计算具体数值。从求面积到物理应用,定积分是连接数学与现实世界的桥梁。')
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

          Text('• 核心公式: ∫ₐᵇ f(x)dx = F(b) - F(a)\n• 几何意义: 曲边梯形的面积\n• 计算技巧: 换元要换限,分部积分用区间再现\n• 应用广泛: 面积、体积、弧长、物理问题')
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
