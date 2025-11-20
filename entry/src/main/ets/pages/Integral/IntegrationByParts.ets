import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct IntegrationByParts {
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

        Text('分部积分法')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('分部积分法')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('分部积分法来源于乘积的求导法则,用于求两个函数乘积的积分。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 公式推导')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('从乘积求导公式出发:\n(uv)\' = u\'v + uv\'\n\n两边积分:\nuv = ∫ u\'v dx + ∫ uv\' dx\n\n移项得分部积分公式:\n∫ uv\' dx = uv - ∫ u\'v dx\n\n或写成:\n∫ u dv = uv - ∫ v du')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('💡 口诀记忆')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('"前积后不积,减去积不积前导"\n\n或者:\n∫ u dv = uv - ∫ v du\n\n记住: 选对 u 和 dv 是关键!')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('🎯 如何选择 u 和 dv?')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('选择原则(反对幂三指):\n\n优先级从高到低:\n1️⃣ 反三角函数 (arcsin, arctan等)\n2️⃣ 对数函数 (ln x, log x)\n3️⃣ 幂函数 (x, x², x³等)\n4️⃣ 三角函数 (sin x, cos x)\n5️⃣ 指数函数 (eˣ, aˣ)\n\n优先级高的选为 u,低的选为 dv')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📚 基础例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('例1: 求 ∫ x·eˣ dx\n\n解:\n设 u = x, dv = eˣ dx\n则 du = dx, v = eˣ\n\n原式 = x·eˣ - ∫ eˣ dx\n    = x·eˣ - eˣ + C\n    = (x-1)eˣ + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例2: 求 ∫ x·sin x dx\n\n解:\n设 u = x, dv = sin x dx\n则 du = dx, v = -cos x\n\n原式 = -x·cos x - ∫ (-cos x) dx\n    = -x·cos x + ∫ cos x dx\n    = -x·cos x + sin x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCCBC')
            .borderRadius(8)

          Text('例3: 求 ∫ ln x dx\n\n解:\n设 u = ln x, dv = dx\n则 du = 1/x dx, v = x\n\n原式 = x·ln x - ∫ x·(1/x) dx\n    = x·ln x - ∫ 1 dx\n    = x·ln x - x + C\n    = x(ln x - 1) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#BCAAA4')
            .borderRadius(8)

          Text('🔄 二次分部积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('例4: 求 ∫ x²·eˣ dx\n\n解:\n第一次分部:\n设 u = x², dv = eˣ dx\ndu = 2x dx, v = eˣ\n\n原式 = x²·eˣ - ∫ eˣ·2x dx\n    = x²·eˣ - 2∫ x·eˣ dx\n\n第二次分部(对 ∫ x·eˣ dx):\n= x²·eˣ - 2[(x-1)eˣ] + C\n= x²·eˣ - 2x·eˣ + 2eˣ + C\n= (x²-2x+2)eˣ + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例5: 求 ∫ x²·cos x dx\n\n解:\n第一次: u = x², dv = cos x dx\n原式 = x²·sin x - 2∫ x·sin x dx\n\n第二次: u = x, dv = sin x dx\n= x²·sin x - 2[-x·cos x + ∫ cos x dx]\n= x²·sin x + 2x·cos x - 2sin x + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('♻️ 循环分部积分')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('例6: 求 ∫ eˣ·sin x dx\n\n解:\n设 I = ∫ eˣ·sin x dx\n\n第一次分部:\nu = sin x, dv = eˣ dx\nI = eˣ·sin x - ∫ eˣ·cos x dx\n\n第二次分部(对 ∫ eˣ·cos x dx):\nu = cos x, dv = eˣ dx\nI = eˣ·sin x - [eˣ·cos x - ∫ eˣ·(-sin x) dx]\nI = eˣ·sin x - eˣ·cos x - I\n\n解方程:\n2I = eˣ(sin x - cos x)\nI = (1/2)eˣ(sin x - cos x) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('📊 特殊类型')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('例7: 求 ∫ arctan x dx\n\n解:\n设 u = arctan x, dv = dx\ndu = 1/(1+x²) dx, v = x\n\n原式 = x·arctan x - ∫ x/(1+x²) dx\n    = x·arctan x - (1/2)ln(1+x²) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('例8: 求 ∫ x³·eˣ dx\n\n解:\n需要三次分部积分:\n第一次: u = x³, dv = eˣ dx\n原式 = x³eˣ - 3∫ x²eˣ dx\n\n第二次:\n= x³eˣ - 3[x²eˣ - 2∫ xeˣ dx]\n\n第三次:\n= x³eˣ - 3x²eˣ + 6[xeˣ - eˣ] + C\n= (x³ - 3x² + 6x - 6)eˣ + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C5CAE9')
            .borderRadius(8)

          Text('例9: 求 ∫ eˣ·cos x dx\n\n解:\n设 I = ∫ eˣ·cos x dx\n第一次: I = eˣ·cos x + ∫ eˣ·sin x dx\n第二次: I = eˣ·cos x + eˣ·sin x - I\n2I = eˣ(cos x + sin x)\nI = (1/2)eˣ(cos x + sin x) + C')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#9FA8DA')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('求下列不定积分:\n\n1. ∫ x·cos x dx\n\n2. ∫ x²·ln x dx\n\n3. ∫ x·e^(2x) dx\n\n4. ∫ arcsin x dx\n\n5. ∫ x³·eˣ dx\n\n6. ∫ eˣ·cos x dx\n\n7. ∫ ln²x dx\n\n8. ∫ x·arctan x dx\n\n9. ∫ x²·cos x dx\n\n10. ∫ e^(-x)·sin(2x) dx')
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

          Text('• 分部积分: ∫ u dv = uv - ∫ v du\n• 选择口诀: 反对幂三指\n• ln x, arctan x 优先选为 u\n• 可能需要多次分部\n• 循环型需要列方程求解\n• 目标: 让积分越来越简单')
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