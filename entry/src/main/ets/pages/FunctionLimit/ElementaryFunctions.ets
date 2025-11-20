import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct ElementaryFunctions {
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

        Text('基本初等函数')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 五大基本初等函数')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('1️⃣ 幂函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')

          Column({ space: 8 }) {
            Text('形式：y = xⁿ（n 为常数）')
              .fontSize(15)
              .fontFamily('monospace')
            Text('例子：y = x², y = x³, y = √x')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('2️⃣ 指数函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')

          Column({ space: 8 }) {
            Text('形式：y = aˣ（a > 0 且 a ≠ 1）')
              .fontSize(15)
              .fontFamily('monospace')
            Text('例子：y = 2ˣ, y = eˣ')
              .fontSize(14)
              .fontColor('#666666')
            Text('特点：增长极快')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('3️⃣ 对数函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')

          Column({ space: 8 }) {
            Text('形式：y = logₐ(x)（a > 0 且 a ≠ 1）')
              .fontSize(15)
              .fontFamily('monospace')
            Text('例子：y = log₂(x), y = ln(x)')
              .fontSize(14)
              .fontColor('#666666')
            Text('是指数函数的反函数')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('4️⃣ 三角函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Column({ space: 8 }) {
            Text('正弦：y = sin(x)')
              .fontSize(15)
            Text('余弦：y = cos(x)')
              .fontSize(15)
            Text('正切：y = tan(x)')
              .fontSize(15)
            Text('特点：周期函数，有界')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E3F2FD')
          .borderRadius(8)

          Text('5️⃣ 反三角函数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#D32F2F')

          Column({ space: 8 }) {
            Text('反正弦：y = arcsin(x)')
              .fontSize(15)
            Text('反余弦：y = arccos(x)')
              .fontSize(15)
            Text('反正切：y = arctan(x)')
              .fontSize(15)
            Text('是三角函数的反函数')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFEBEE')
          .borderRadius(8)

          Text('⭐ 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 16 })

          Column({ space: 8 }) {
            Text('• 这五类函数是最基础的函数')
              .fontSize(15)
            Text('• 其他复杂函数都由它们组合而成')
              .fontSize(15)
            Text('• 每类函数都有独特性质')
              .fontSize(15)
            Text('• 掌握它们是学习微积分的基础')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
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