import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct LimitConcept {
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

        Text('函数的极限')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 什么是极限？')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('极限描述的是"无限接近"的概念，是微积分的核心基础。')
            .fontSize(16)
            .lineHeight(24)

          Text('🎯 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('想象你在走向一扇门：')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('• 每次走一半的距离')
              .fontSize(15)
            Text('• 永远不会真正到达门')
              .fontSize(15)
            Text('• 但会越来越接近门')
              .fontSize(15)
            Text('• 这个"无限接近的位置"就是极限')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('📝 数学定义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('当 x → a 时，f(x) → L')
              .fontSize(16)
              .fontFamily('monospace')
              .fontWeight(FontWeight.Bold)
            Text('记作：lim(x→a) f(x) = L')
              .fontSize(15)
              .fontFamily('monospace')
            Text('读作：当 x 趋向于 a 时，f(x) 的极限是 L')
              .fontSize(14)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('💡 左极限与右极限')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('左极限：从左边趋近，记作 lim(x→a⁻)')
              .fontSize(15)
            Text('右极限：从右边趋近，记作 lim(x→a⁺)')
              .fontSize(15)
            Text('极限存在 ⟺ 左极限 = 右极限')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('🔢 具体例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('例1：lim(x→2) (x + 1) = ?')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('当 x 趋向于 2 时，x + 1 趋向于 3')
              .fontSize(15)
            Text('答案：3')
              .fontSize(15)
              .fontColor('#2E7D32')

            Divider().margin({ top: 8, bottom: 8 })

            Text('例2：lim(x→0) (sin(x)/x) = ?')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('这是一个重要极限')
              .fontSize(15)
            Text('答案：1')
              .fontSize(15)
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
            Text('• 极限描述无限接近的趋势')
              .fontSize(15)
            Text('• 用 lim 符号表示')
              .fontSize(15)
            Text('• 分为左极限和右极限')
              .fontSize(15)
            Text('• 是微积分的基础概念')
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