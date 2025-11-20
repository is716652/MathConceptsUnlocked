import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct HigherDerivatives {
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

        Text('高阶导数')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('高阶导数')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('导数的导数,就是高阶导数。一阶导数描述速度,二阶导数描述加速度。')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 定义与记号')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('一阶导数: y\' 或 dy/dx 或 f\'(x)\n\n二阶导数: y\'\' 或 d²y/dx² 或 f\'\'(x)\n\n三阶导数: y\'\'\' 或 d³y/dx³ 或 f\'\'\'(x)\n\nn阶导数: y⁽ⁿ⁾ 或 dⁿy/dxⁿ 或 f⁽ⁿ⁾(x)')
            .fontSize(15)
            .lineHeight(26)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🔢 常见函数的高阶导数')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('1️⃣ 幂函数 y = xⁿ\n\ny\' = n·xⁿ⁻¹\ny\'\' = n(n-1)·xⁿ⁻²\ny\'\'\' = n(n-1)(n-2)·xⁿ⁻³\ny⁽ⁿ⁾ = n!\n\n特别地: (x³)⁽⁴⁾ = 0')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('2️⃣ 指数函数 y = eˣ\n\ny\' = eˣ\ny\'\' = eˣ\ny\'\'\' = eˣ\ny⁽ⁿ⁾ = eˣ\n\n(指数函数求多少次导都是自己!)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('3️⃣ 正弦函数 y = sin x\n\ny\' = cos x = sin(x + π/2)\ny\'\' = -sin x = sin(x + π)\ny\'\'\' = -cos x = sin(x + 3π/2)\ny⁽⁴⁾ = sin x = sin(x + 2π)\n\n规律: y⁽ⁿ⁾ = sin(x + nπ/2)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('4️⃣ 余弦函数 y = cos x\n\ny\' = -sin x = cos(x + π/2)\ny\'\' = -cos x = cos(x + π)\ny\'\'\' = sin x = cos(x + 3π/2)\ny⁽⁴⁾ = cos x = cos(x + 2π)\n\n规律: y⁽ⁿ⁾ = cos(x + nπ/2)')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#81C784')
            .borderRadius(8)

          Text('5️⃣ 对数函数 y = ln x\n\ny\' = 1/x = x⁻¹\ny\'\' = -1/x² = -x⁻²\ny\'\'\' = 2/x³ = 2x⁻³\ny⁽⁴⁾ = -6/x⁴ = -6x⁻⁴\n\n规律: y⁽ⁿ⁾ = (-1)ⁿ⁻¹·(n-1)!/xⁿ')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#66BB6A')
            .borderRadius(8)

          Text('📚 计算例题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('例1: 求 y = x⁴ 的三阶导数\n\n解:\ny\' = 4x³\ny\'\' = 12x²\ny\'\'\' = 24x')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例2: 求 y = e²ˣ 的 n 阶导数\n\n解:\ny\' = 2e²ˣ\ny\'\' = 4e²ˣ = 2²e²ˣ\ny\'\'\' = 8e²ˣ = 2³e²ˣ\n\n规律: y⁽ⁿ⁾ = 2ⁿe²ˣ')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('例3: 求 y = x·eˣ 的 n 阶导数\n\n解(用莱布尼茨公式):\n(uv)⁽ⁿ⁾ = Σ C(n,k)·u⁽ᵏ⁾·v⁽ⁿ⁻ᵏ⁾\n\n令 u = x, v = eˣ\nu\' = 1, u\'\' = 0\nv⁽ᵏ⁾ = eˣ (任意阶)\n\ny⁽ⁿ⁾ = x·eˣ + n·1·eˣ\n     = (x + n)eˣ')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#CE93D8')
            .borderRadius(8)

          Text('🔍 莱布尼茨公式')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('两个函数乘积的 n 阶导数:\n\n(uv)⁽ⁿ⁾ = Σ(k=0→n) C(n,k)·u⁽ᵏ⁾·v⁽ⁿ⁻ᵏ⁾\n\n其中 C(n,k) = n!/(k!(n-k)!)\n\n类似二项式定理!')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('💡 物理意义')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('若 s(t) 是位移函数:\n\n一阶导数 s\'(t): 速度\n二阶导数 s\'\'(t): 加速度\n三阶导数 s\'\'\'(t): 加加速度(急动度)\n\n例如汽车:\n• 踩油门 → 加速度 > 0\n• 继续加力踩 → 加加速度 > 0')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求 y = x⁵ 的四阶导数\n\n2. 求 y = sin(2x) 的二阶导数\n\n3. 求 y = e⁻ˣ 的 n 阶导数\n\n4. 求 y = x² 的三阶导数\n\n5. 求 y = ln(x+1) 的二阶导数\n\n6. 求 y = x·sin x 的二阶导数\n\n7. 验证 y = e³ˣ 满足方程 y\'\' - 9y = 0\n\n8. 求 y = cos(3x) 的 n 阶导数')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 高阶导数就是反复求导\n• eˣ 求多少次都是自己\n• sin/cos 有周期规律\n• 幂函数求到 n+1 阶就是0\n• 莱布尼茨公式类似二项式定理\n• 二阶导数在物理中表示加速度')
            .fontSize(15)
            .lineHeight(24)
        }
        .width('100%')
        .padding(16)
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