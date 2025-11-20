import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct SetConcept {
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

        Text('集合的概念')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 什么是集合？')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('集合就像一个"篮子"，里面装着一些东西。这些东西可以是数字、字母、甚至其他物品。')
            .fontSize(16)
            .lineHeight(24)

          Text('🎯 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Text('想象你的书包：\n• 书包就是一个"集合"\n• 书包里的书、笔、橡皮就是"元素"\n• 书在书包里，我们说"书属于书包这个集合"')
            .fontSize(15)
            .lineHeight(24)

          Text('📝 数学表示')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('集合通常用大写字母表示：A, B, C...')
              .fontSize(15)
            Text('元素用小写字母表示：a, b, c...')
              .fontSize(15)
            Text('属于符号：∈（读作"属于"）')
              .fontSize(15)
            Text('不属于符号：∉（读作"不属于"）')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('💡 例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('例1：自然数集合')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('N = {0, 1, 2, 3, 4, 5, ...}')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('说明：5 ∈ N（5属于自然数集合）')
              .fontSize(14)
              .fontColor('#666666')

            Divider().margin({ top: 8, bottom: 8 })

            Text('例2：小于10的偶数集合')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

            Text('A = {2, 4, 6, 8}')
              .fontSize(15)
              .fontFamily('monospace')
              .padding(8)
              .backgroundColor('#E8EAF6')
              .borderRadius(4)

            Text('说明：2 ∈ A（2属于这个集合）')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('⭐ 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')
            .margin({ top: 16 })

          Column({ space: 8 }) {
            Text('• 集合是由元素组成的整体')
              .fontSize(15)
            Text('• 用大写字母表示集合，用花括号{}包裹元素')
              .fontSize(15)
            Text('• ∈ 表示属于，∉ 表示不属于')
              .fontSize(15)
            Text('• 集合中的元素不重复、无顺序')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E3F2FD')
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