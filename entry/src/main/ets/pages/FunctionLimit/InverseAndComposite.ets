import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct InverseAndComposite {
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

        Text('反函数与复合函数')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 反函数')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('如果 y = f(x)，那么 x = f⁻¹(y) 就是反函数。')
            .fontSize(16)
            .lineHeight(24)

          Column({ space: 8 }) {
            Text('🎯 通俗理解：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('原函数：输入 x，输出 y')
              .fontSize(15)
            Text('反函数：输入 y，输出 x（反过来）')
              .fontSize(15)
            Text('例子：y = 2x 的反函数是 x = y/2')
              .fontSize(14)
              .fontColor('#666666')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E3F2FD')
          .borderRadius(8)

          Text('📚 复合函数')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 16 })

          Text('把一个函数的输出作为另一个函数的输入。')
            .fontSize(16)
            .lineHeight(24)

          Column({ space: 8 }) {
            Text('记号：f(g(x)) 或 (f ∘ g)(x)')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('例子：')
              .fontSize(15)
            Text('设 u = g(x) = x + 1')
              .fontSize(14)
              .fontFamily('monospace')
            Text('设 y = f(u) = u²')
              .fontSize(14)
              .fontFamily('monospace')
            Text('则 y = f(g(x)) = (x + 1)²')
              .fontSize(14)
              .fontFamily('monospace')
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)

          Text('💡 具体例子')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#F57C00')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('例1：求 y = 3x 的反函数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('解：由 y = 3x 得 x = y/3')
              .fontSize(15)
            Text('所以反函数为 f⁻¹(y) = y/3')
              .fontSize(15)

            Divider().margin({ top: 8, bottom: 8 })

            Text('例2：求复合函数')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('设 f(x) = x², g(x) = x + 1')
              .fontSize(15)
            Text('求 f(g(x)) = ?')
              .fontSize(15)
            Text('解：f(g(x)) = f(x + 1) = (x + 1)²')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('⭐ 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')
            .margin({ top: 16 })

          Column({ space: 8 }) {
            Text('• 反函数：输入输出互换')
              .fontSize(15)
            Text('• 复合函数：多个函数的组合')
              .fontSize(15)
            Text('• 反函数记作 f⁻¹(x)')
              .fontSize(15)
            Text('• 复合函数记作 f(g(x))')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
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