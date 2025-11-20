import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct LimitCriteria {
  build() {
    Stack() {
      Column() {
      Row() {
        Button('← 返回')
          .fontSize(14)
          .fontColor('#3F51B5')
          .backgroundColor('#F0F0F0')
          .borderRadius(8)
          .padding({ left: 12, right: 12, top: 6, bottom: 6 })
          .onClick(() => router.back())

        Text('极限存在准则')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 两大重要准则')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('1️⃣ 夹逼准则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('🎯 形象理解：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('如果 g(x) ≤ f(x) ≤ h(x)')
              .fontSize(15)
            Text('且 lim g(x) = lim h(x) = L')
              .fontSize(15)
            Text('那么 lim f(x) = L')
              .fontSize(15)
            Text('就像被两边夹住，跑不掉！')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('2️⃣ 单调有界准则')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('单调递增且有上界 → 极限存在')
              .fontSize(15)
            Text('单调递减且有下界 → 极限存在')
              .fontSize(15)
            Text('例如：不断增加但不超过10')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('💡 两个重要极限')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('重要极限 1：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('lim(x→0) sin(x)/x = 1')
              .fontSize(16)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Divider().margin({ top: 8, bottom: 8 })

            Text('重要极限 2：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('lim(x→∞) (1 + 1/x)ˣ = e')
              .fontSize(16)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)
            Text('其中 e ≈ 2.71828（自然常数）')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('🔢 应用示例')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('求：lim(x→0) sin(2x)/x')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('解：= lim(x→0) 2×sin(2x)/(2x)')
              .fontSize(14)
            Text('   = 2×lim(x→0) sin(2x)/(2x)')
              .fontSize(14)
            Text('   = 2×1 = 2')
              .fontSize(14)
              .fontColor('#2E7D32')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E3F2FD')
          .borderRadius(8)

          Text('⭐ 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#D32F2F')
            .margin({ top: 16 })

          Column({ space: 8 }) {
            Text('• 夹逼准则：被夹在中间')
              .fontSize(15)
            Text('• 单调有界准则：单调且有界')
              .fontSize(15)
            Text('• 两个重要极限要牢记')
              .fontSize(15)
            Text('• 这些是求极限的重要工具')
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
  
      // 悠悠浮动按钮
      YouyouFloatingButton()
    }
  }
}