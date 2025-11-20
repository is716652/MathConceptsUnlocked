import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct GeometricApplications {
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

        Text('定积分的几何应用')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('定积分的几何应用')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('定积分最直观的应用就是计算几何图形的面积、体积、弧长等!')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 平面图形的面积')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('1️⃣ 直角坐标系下\n\n类型A: y=f(x), x轴, x=a, x=b 围成\nS = ∫ₐᵇ |f(x)| dx\n\n类型B: x=φ(y), y轴, y=c, y=d 围成\nS = ∫ᶜᵈ |φ(y)| dy\n\n类型C: y₁=f(x), y₂=g(x), x=a, x=b\nS = ∫ₐᵇ |f(x)-g(x)| dx')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('例1: 求 y=x², y=x 围成的面积\n\n解:\n1️⃣ 求交点:x² = x → x(x-1)=0 → x=0,1\n\n2️⃣ 判断上下:在[0,1]上,x > x²\n\n3️⃣ 计算面积:\nS = ∫₀¹ (x - x²) dx\n  = [x²/2 - x³/3]₀¹\n  = 1/2 - 1/3 = 1/6')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('例2: 求 y² = x, x = 1 围成的面积\n\n解:用 y 作积分变量\ny² = x → x = y²\n\n交点:y² = 1 → y = ±1\n\nS = ∫₋₁¹ (1 - y²) dy\n  = [y - y³/3]₋₁¹\n  = (1 - 1/3) - (-1 + 1/3)\n  = 2/3 + 2/3 = 4/3')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFE082')
            .borderRadius(8)

          Text('2️⃣ 极坐标系下')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('曲线 r = r(θ), θ ∈ [α,β] 与极轴围成的面积:\n\nS = (1/2)∫ₐᵝ r²(θ) dθ\n\n记忆:扇形面积公式 S = (1/2)r²θ 的推广')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例3: 求心形线 r = a(1+cosθ) 的面积\n\n解:\nθ ∈ [0, 2π]\n\nS = (1/2)∫₀^(2π) [a(1+cosθ)]² dθ\n  = (a²/2)∫₀^(2π) (1+2cosθ+cos²θ) dθ\n  = (a²/2)∫₀^(2π) [1+2cosθ+(1+cos2θ)/2] dθ\n  = (a²/2)[θ + 2sinθ + θ/2 + sin2θ/4]₀^(2π)\n  = (a²/2)·3π = 3πa²/2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('📌 旋转体的体积')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('1️⃣ 绕 x 轴旋转\n\ny=f(x), x∈[a,b] 绕x轴旋转:\nVₓ = π∫ₐᵇ f²(x) dx\n\n2️⃣ 绕 y 轴旋转\n\nx=φ(y), y∈[c,d] 绕y轴旋转:\nVᵧ = π∫ᶜᵈ φ²(y) dy')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例4: 求 y=√x, x∈[0,1] 绕x轴旋转的体积\n\n解:\nVₓ = π∫₀¹ (√x)² dx\n   = π∫₀¹ x dx\n   = π[x²/2]₀¹\n   = π/2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('例5: 求 y²=x, x=1 绕y轴旋转的体积\n\n解:y² = x → x = y², y∈[-1,1]\n\nVᵧ = π∫₋₁¹ (1)² dy - π∫₋₁¹ (y²)² dy\n   = π·2 - π[y⁵/5]₋₁¹\n   = 2π - π(1/5+1/5)\n   = 2π - 2π/5 = 8π/5')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#CE93D8')
            .borderRadius(8)

          Text('📌 平行截面面积已知的立体体积')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('若立体在 x=x 处的截面积为 A(x),则:\n\nV = ∫ₐᵇ A(x) dx\n\n(旋转体是特例:A(x) = πy²)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例6: 求底面半径r,高h的圆锥体积\n\n解:建立坐标系,顶点在原点\n\n圆锥方程:y = (r/h)x, x∈[0,h]\n\nx 处截面是半径为 y 的圆:\nA(x) = πy² = π(r²/h²)x²\n\nV = ∫₀ʰ π(r²/h²)x² dx\n  = π(r²/h²)·[x³/3]₀ʰ\n  = π(r²/h²)·h³/3\n  = πr²h/3\n\n验证了教科书公式!')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('📌 曲线弧长')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('1️⃣ 直角坐标 y=f(x), x∈[a,b]\n\ns = ∫ₐᵇ √[1+(y\')²] dx\n\n2️⃣ 参数方程 {x=φ(t), y=ψ(t)}, t∈[α,β]\n\ns = ∫ₐᵝ √[(x\'(t))²+(y\'(t))²] dt\n\n3️⃣ 极坐标 r=r(θ), θ∈[α,β]\n\ns = ∫ₐᵝ √[r²+(r\')²] dθ')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例7: 求半圆 y=√(a²-x²), x∈[-a,a] 的弧长\n\n解:\ny\' = -x/√(a²-x²)\n\ns = ∫₋ₐᵃ √[1 + x²/(a²-x²)] dx\n  = ∫₋ₐᵃ √[a²/(a²-x²)] dx\n  = ∫₋ₐᵃ a/√(a²-x²) dx\n  = a·[arcsin(x/a)]₋ₐᵃ\n  = a·[π/2 - (-π/2)]\n  = πa\n\n正好是半圆周长!')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求 y=x², y=2x 围成的面积\n\n2. 求 x²+y²=a² 的面积(用极坐标)\n\n3. 求 y=sin x, x∈[0,π] 绕x轴旋转的体积\n\n4. 求抛物线 y²=2px 与 x=a 围成图形绕x轴旋转的体积\n\n5. 求圆 x²+y²=a² 的周长\n\n6. 求 y=x³, x∈[0,1] 的弧长\n\n7. 求摆线一拱{x=a(t-sin t), y=a(1-cos t)}的弧长')
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

          Text('• 平面面积:S = ∫|f(x)-g(x)|dx\n• 极坐标面积:S = (1/2)∫r²dθ\n• 旋转体体积:V = π∫f²(x)dx\n• 截面面积法:V = ∫A(x)dx\n• 曲线弧长:s = ∫√(1+y\'²)dx\n• 关键:建立积分模型\n• 画图确定积分限很重要!')
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