import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct TrigonometricIntegrals {
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

        Text('三角函数积分')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('三角函数积分技巧')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('三角函数积分需要灵活运用三角恒等式,将复杂形式化为可积形式。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 常用三角恒等式')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('平方关系:\nsin²x + cos²x = 1\n1 + tan²x = sec²x\n1 + cot²x = csc²x\n\n降幂公式:\nsin²x = (1-cos 2x)/2\ncos²x = (1+cos 2x)/2\ntan²x = sec²x - 1\n\n积化和差:\nsin x·cos x = (1/2)sin 2x\nsin²x·cos²x = (1/8)(1-cos 4x)\nsin x·sin y = [cos(x-y) - cos(x+y)]/2\ncos x·cos y = [cos(x-y) + cos(x+y)]/2')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🎯 sinⁿx·cosᵐx 型积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('策略1: n 或 m 有奇数\n留一个,其余化成另一个,凑微分\n\n策略2: n, m 都是偶数\n用降幂公式')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📚 例题—奇数次幂')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求 ∫ sin³x dx\n\n解:\nsin³x = sin²x·sin x = (1-cos²x)·sin x\n\n原式 = ∫ (1-cos²x)·sin x dx\n    = -∫ (1-cos²x) d(cos x)\n    = -∫ (1-u²) du  [u=cos x]\n    = -(u - u³/3) + C\n    = -cos x + cos³x/3 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 求 ∫ sin²x·cos³x dx\n\n解:\ncos³x = cos²x·cos x = (1-sin²x)·cos x\n\n原式 = ∫ sin²x·(1-sin²x)·cos x dx\n    = ∫ sin²x·(1-sin²x) d(sin x)\n    = ∫ u²(1-u²) du  [u=sin x]\n    = ∫ (u² - u⁴) du\n    = u³/3 - u⁵/5 + C\n    = sin³x/3 - sin⁵x/5 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('例3: 求 ∫ cos⁵x dx\n\n解:\ncos⁵x = cos⁴x·cos x = (1-sin²x)²·cos x\n\n原式 = ∫ (1-sin²x)² d(sin x)\n    = ∫ (1 - 2sin²x + sin⁴x) d(sin x)\n    = sin x - (2/3)sin³x + (1/5)sin⁵x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#CE93D8')
            .borderRadius(8)

          Text('📐 例题—偶数次幂')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('例4: 求 ∫ sin²x dx\n\n解:\nsin²x = (1-cos 2x)/2\n\n原式 = ∫ (1-cos 2x)/2 dx\n    = (1/2)∫ 1 dx - (1/2)∫ cos 2x dx\n    = x/2 - (1/4)sin 2x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例5: 求 ∫ sin²x·cos²x dx\n\n解:\nsin²x·cos²x = (sin x·cos x)²\n            = [(1/2)sin 2x]²\n            = (1/4)sin²2x\n            = (1/4)·(1-cos 4x)/2\n            = (1/8)(1-cos 4x)\n\n原式 = (1/8)∫ (1-cos 4x) dx\n    = (1/8)[x - (1/4)sin 4x] + C\n    = x/8 - sin 4x/32 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCCBC')
            .borderRadius(8)

          Text('例6: 求 ∫ cos⁴x dx\n\n解:\ncos⁴x = (cos²x)²\n      = [(1+cos 2x)/2]²\n      = (1/4)(1 + 2cos 2x + cos²2x)\n      = (1/4)[1 + 2cos 2x + (1+cos 4x)/2]\n      = (3/8) + (1/2)cos 2x + (1/8)cos 4x\n\n原式 = (3/8)x + (1/4)sin 2x + (1/32)sin 4x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FF9E80')
            .borderRadius(8)

          Text('🔄 tanⁿx·secᵐx 型积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('策略:\n• m 为偶数: 留 sec²x,其余化 tan\n• n 为奇数: 留 sec x·tan x,其余化 sec')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例7: 求 ∫ tan²x·sec²x dx\n\n解:\ntan²x·sec²x = tan²x·sec²x\n\n原式 = ∫ tan²x·sec²x dx\n    = ∫ tan²x d(tan x)\n    = tan³x/3 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('例8: 求 ∫ tan³x dx\n\n解:\ntan³x = tan x·tan²x = tan x·(sec²x-1)\n\n原式 = ∫ tan x·sec²x dx - ∫ tan x dx\n    = ∫ tan x d(tan x) - ∫ sin x/cos x dx\n    = tan²x/2 + ln|cos x| + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#80CBC4')
            .borderRadius(8)

          Text('例9: 求 ∫ sec⁴x dx\n\n解:\nsec⁴x = sec²x·sec²x = (1+tan²x)·sec²x\n\n原式 = ∫ (1+tan²x)·sec²x dx\n    = ∫ (1+tan²x) d(tan x)\n    = tan x + tan³x/3 + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#4DB6AC')
            .borderRadius(8)

          Text('💡 万能代换(半角代换)')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('设 t = tan(x/2), 则:\n\nsin x = 2t/(1+t²)\ncos x = (1-t²)/(1+t²)\ntan x = 2t/(1-t²)\ndx = 2/(1+t²) dt\n\n可以把任何三角有理式化为有理函数!')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('例10: 求 ∫ 1/(1+sin x) dx\n\n解法1(万能代换):\n设 t = tan(x/2)\n\n原式 = ∫ 1/[1+2t/(1+t²)]·2/(1+t²) dt\n    = ∫ 2/[(1+t²)+2t] dt\n    = ∫ 2/(t²+2t+1) dt\n    = ∫ 2/(t+1)² dt\n    = -2/(t+1) + C\n    = -2/[tan(x/2)+1] + C\n\n解法2(配凑法):\n原式 = ∫ (1-sin x)/(1-sin²x) dx\n    = ∫ (1-sin x)/cos²x dx\n    = ∫ sec²x dx - ∫ tan x·sec x dx\n    = tan x - sec x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#D7CCC8')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列不定积分:\n\n1. ∫ cos³x dx\n\n2. ∫ sin⁴x dx\n\n3. ∫ sin²x·cos⁴x dx\n\n4. ∫ tan²x dx\n\n5. ∫ sec³x dx (提示: 分部积分)\n\n6. ∫ sin x·cos x dx\n\n7. ∫ 1/(1+cos x) dx\n\n8. ∫ sin³x·cos²x dx\n\n9. ∫ 1/(sin x + cos x) dx\n\n10. ∫ tan x·sec³x dx')
            .width('100%')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• sinⁿx·cosᵐx: 奇数留一个凑微分,偶数用降幂\n• tanⁿx·secᵐx: 配凑 d(tan x) 或 d(sec x)\n• 降幂公式处理偶数次幂\n• 万能代换可解任何三角有理式\n• 灵活运用三角恒等变换\n• 多种方法可达到同一目标')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
        }
        .width('100%')
        .padding(16)
        .alignItems(HorizontalAlign.Start)
      }
      .layoutWeight(1)
      .scrollBar(BarState.On)
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FFFFFF')
  
      // 悠悠浮动按钮
      YouyouFloatingButton()
    }
  }
}