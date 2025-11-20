import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct InfinitesimalAndInfinite {
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

        Text('无穷小与无穷大')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 无穷小')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Column({ space: 8 }) {
            Text('定义：极限为 0 的变量')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('记号：α, β, γ（希腊字母）')
              .fontSize(15)
            Text('例子：lim(x→0) x = 0，x 是无穷小')
              .fontSize(14)
              .fontColor('#666666')
            Text('注意：不是很小的数，而是趋向于0')
              .fontSize(14)
              .fontColor('#D32F2F')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E3F2FD')
          .borderRadius(8)

          Text('📚 无穷大')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('定义：绝对值无限增大的变量')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('记号：∞（无穷符号）')
              .fontSize(15)
            Text('例子：lim(x→0) 1/x = ∞')
              .fontSize(14)
              .fontColor('#666666')
            Text('注意：不是很大的数，而是无限增大')
              .fontSize(14)
              .fontColor('#D32F2F')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('💡 无穷小的比较')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('高阶无穷小：lim α/β = 0')
              .fontSize(15)
            Text('（α 比 β 快地趋向于0）')
              .fontSize(14)
              .fontColor('#666666')

            Text('低阶无穷小：lim α/β = ∞')
              .fontSize(15)
            Text('（α 比 β 慢地趋向于0）')
              .fontSize(14)
              .fontColor('#666666')

            Text('同阶无穷小：lim α/β = C（C≠0）')
              .fontSize(15)
            Text('（α 和 β 以相同速度趋向于0）')
              .fontSize(14)
              .fontColor('#666666')

            Text('等价无穷小：lim α/β = 1')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('（最重要！α ~ β）')
              .fontSize(14)
              .fontColor('#D32F2F')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('🔑 常用等价无穷小')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('当 x → 0 时：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('sin(x) ~ x')
              .fontSize(15)
              .fontFamily('monospace')
            Text('tan(x) ~ x')
              .fontSize(15)
              .fontFamily('monospace')
            Text('ln(1+x) ~ x')
              .fontSize(15)
              .fontFamily('monospace')
            Text('eˣ - 1 ~ x')
              .fontSize(15)
              .fontFamily('monospace')
            Text('1 - cos(x) ~ x²/2')
              .fontSize(15)
              .fontFamily('monospace')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('⭐ 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#D32F2F')
            .margin({ top: 16 })

          Column({ space: 8 }) {
            Text('• 无穷小：极限为0')
              .fontSize(15)
            Text('• 无穷大：绝对值无限增大')
              .fontSize(15)
            Text('• 无穷小与无穷大互为倒数')
              .fontSize(15)
            Text('• 等价无穷小可以互相替换')
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