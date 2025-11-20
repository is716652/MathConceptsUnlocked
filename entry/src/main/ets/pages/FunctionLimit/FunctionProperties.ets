import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct FunctionProperties {
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

        Text('函数的性质')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 函数的四大性质')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('函数不仅描述数量关系，还具有重要的性质特征。')
            .fontSize(16)
            .lineHeight(24)

          Text('1️⃣ 单调性')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('单调递增：x 增大，y 也增大')
              .fontSize(15)
            Text('单调递减：x 增大，y 反而减小')
              .fontSize(15)
            Text('例子：y = 2x（递增），y = -x（递减）')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('2️⃣ 奇偶性')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('偶函数：f(-x) = f(x)，图像关于 y 轴对称')
              .fontSize(15)
            Text('奇函数：f(-x) = -f(x)，图像关于原点对称')
              .fontSize(15)
            Text('例子：y = x²（偶函数），y = x³（奇函数）')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('3️⃣ 周期性')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('周期函数：f(x + T) = f(x)，T 为周期')
              .fontSize(15)
            Text('图像每隔 T 重复一次')
              .fontSize(15)
            Text('例子：y = sin(x)（周期 2π）')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('4️⃣ 有界性')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('有界：存在常数 M，使 |f(x)| ≤ M')
              .fontSize(15)
            Text('无界：函数值可以任意大')
              .fontSize(15)
            Text('例子：y = sin(x) 有界，y = x² 无界')
              .fontSize(14)
              .fontColor('#666666')
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
            Text('• 单调性：描述函数的增减趋势')
              .fontSize(15)
            Text('• 奇偶性：描述函数的对称性')
              .fontSize(15)
            Text('• 周期性：描述函数的重复性')
              .fontSize(15)
            Text('• 有界性：描述函数值的范围')
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