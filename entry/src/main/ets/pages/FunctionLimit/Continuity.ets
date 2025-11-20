import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct Continuity {
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

        Text('函数的连续性')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('📚 什么是连续？')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')

          Text('连续的函数就是"一笔画成"的函数，图像不间断。')
            .fontSize(16)
            .lineHeight(24)

          Text('🎯 通俗理解')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#388E3C')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('想象画一条曲线：')
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
            Text('• 连续：笔不离开纸')
              .fontSize(15)
            Text('• 不连续：笔抬起来了')
              .fontSize(15)
            Text('• 跳跃、断裂都是不连续')
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
            Text('f(x) 在 x = a 处连续，需要：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('① f(a) 有定义')
              .fontSize(15)
            Text('② lim(x→a) f(x) 存在')
              .fontSize(15)
            Text('③ lim(x→a) f(x) = f(a)')
              .fontSize(15)
            Text('三个条件缺一不可！')
              .fontSize(14)
              .fontColor('#D32F2F')
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)

          Text('💡 间断点的类型')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 8 })

          Column({ space: 12 }) {
            Text('第一类间断点：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('• 可去间断点：极限存在，但不等于函数值')
              .fontSize(15)
            Text('• 跳跃间断点：左右极限都存在但不相等')
              .fontSize(15)

            Divider().margin({ top: 8, bottom: 8 })

            Text('第二类间断点：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('• 无穷间断点：极限为无穷')
              .fontSize(15)
            Text('• 振荡间断点：极限不存在且振荡')
              .fontSize(15)
          }
          .alignItems(HorizontalAlign.Start)
          .width('100%')
          .padding(12)
          .backgroundColor('#F3E5F5')
          .borderRadius(8)

          Text('🔑 连续函数的性质')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#1976D2')
            .margin({ top: 8 })

          Column({ space: 8 }) {
            Text('在闭区间 [a,b] 上连续的函数：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('① 有界性：有最大值和最小值')
              .fontSize(15)
            Text('② 介值定理：可以取到中间的任何值')
              .fontSize(15)
            Text('③ 零点定理：f(a)·f(b)<0 则存在零点')
              .fontSize(15)
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
            Text('• 连续 = 极限值 = 函数值')
              .fontSize(15)
            Text('• 不连续的点叫间断点')
              .fontSize(15)
            Text('• 间断点分为两大类')
              .fontSize(15)
            Text('• 连续函数有很好的性质')
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