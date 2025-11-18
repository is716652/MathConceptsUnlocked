import router from '@ohos.router';

@Entry
@Component
struct PhysicalApplications {
  build() {
    Column() {
      Row() {
        Button('← 返回')
          .fontSize(14)
          .fontColor('#3F51B5')
          .backgroundColor('#F0F0F0')
          .borderRadius(8)
          .padding({ left: 12, right: 12, top: 6, bottom: 6 })
          .onClick(() => router.back())

        Text('定积分的物理应用')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('定积分的物理应用')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('定积分是解决物理问题的强大工具,核心思想:"微元法"')
            .fontSize(15)
            .lineHeight(24)

          Text('💡 微元法思想')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('解决物理问题的步骤:\n\n1️⃣ 分割:将整体分成n个微小部分\n2️⃣ 近似:每个微小部分用简单公式\n3️⃣ 求和:所有微小量相加\n4️⃣ 取极限:n→∞,得到定积分\n\n通俗理解:"化整为零,积零为整"')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📌 变力做功')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('恒力做功:W = F·s\n\n变力做功:\nW = ∫ₐᵇ F(x) dx\n\n其中 F(x) 是位置 x 处的力')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('例1: 弹簧问题\n\n弹簧从自然长度拉伸 a 米需要多少功?\n\n解:胡克定律 F = kx (k是弹性系数)\n\nW = ∫₀ᵃ kx dx\n  = k·[x²/2]₀ᵃ\n  = ka²/2\n\n例如:k=100 N/m,拉伸0.1m\nW = 100×(0.1)²/2 = 0.5 焦耳')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('例2: 抽水做功\n\n圆柱形水桶,底面半径r,高h,装满水。\n将水全部抽出需要多少功?(水密度ρ,重力加速度g)\n\n解:建立坐标系,桶底为原点\n\n深度x处,水的微元:\n• 厚度:dx\n• 体积:dV = πr²·dx\n• 质量:dm = ρπr²·dx\n• 重力:dF = gρπr²·dx\n• 提升高度:h-x\n• 微功:dW = (h-x)·gρπr²·dx\n\n总功:\nW = ∫₀ʰ (h-x)·gρπr² dx\n  = gρπr²∫₀ʰ (h-x) dx\n  = gρπr²[hx - x²/2]₀ʰ\n  = gρπr²·h²/2')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A5D6A7')
            .borderRadius(8)

          Text('📌 液体压力')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('液体压强:p = ρgh (深度h处)\n\n侧壁压力:\nF = ∫ₐᵇ ρg·h(x)·l(x) dx\n\n其中:\n• h(x): 深度\n• l(x): 宽度')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('例3: 梯形闸门压力\n\n水库闸门是梯形,上底2m,下底4m,高3m,\n门顶与水面齐平。求闸门所受压力。\n(水密度ρ=1000 kg/m³, g=10 m/s²)\n\n解:建立坐标系,x轴向下\n\n深度x处,闸门宽度:\nl(x) = 2 + (2/3)x  (线性关系)\n\n压强:p(x) = ρgx = 10000x\n\n微元压力:\ndF = 10000x·[2 + (2/3)x]·dx\n\n总压力:\nF = ∫₀³ 10000x[2 + (2/3)x] dx\n  = 10000∫₀³ (2x + 2x²/3) dx\n  = 10000[x² + 2x³/9]₀³\n  = 10000(9 + 6)\n  = 150000 牛顿 = 150 千牛')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('📌 质心(形心)')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('平面图形的形心坐标:\n\nx̄ = [∫ₐᵇ x·f(x) dx] / [∫ₐᵇ f(x) dx]\n\nȳ = [∫ₐᵇ (1/2)f²(x) dx] / [∫ₐᵇ f(x) dx]\n\n(质心就是"平衡点")')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('例4: 求半圆 y=√(a²-x²) 与x轴围成图形的质心\n\n解:\n由对称性:x̄ = 0\n\n面积:S = πa²/2\n\nȳ = [∫₋ₐᵃ (1/2)·(a²-x²) dx] / (πa²/2)\n  = [1/2·(a²x - x³/3)]₋ₐᵃ / (πa²/2)\n  = [1/2·(2a³ - 2a³/3)] / (πa²/2)\n  = (2a³/3) / (πa²/2)\n  = 4a/(3π)\n\n质心:(0, 4a/3π)')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCDD2')
            .borderRadius(8)

          Text('📌 平均值')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('函数 f(x) 在 [a,b] 上的平均值:\n\nf̄ = [∫ₐᵇ f(x) dx] / (b-a)\n\n物理意义:\n• 平均速度 = 总路程/时间\n• 平均功率 = 总功/时间')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('例5: 物体速度 v(t)=3t², t∈[0,2],求平均速度\n\n解:\nv̄ = [∫₀² 3t² dt] / 2\n  = [t³]₀² / 2\n  = 8/2 = 4 m/s')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#B2DFDB')
            .borderRadius(8)

          Text('💭 万有引力')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('细棒对质点的引力:\n\nF = ∫ G·(dm·m)/r²\n\n其中:\n• G: 万有引力常数\n• dm: 微元质量\n• m: 质点质量\n• r: 距离')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 练习题')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 弹簧k=50N/m,从自然长度压缩0.2m需要多少功?\n\n2. 圆锥形容器,顶角60°,高2m,装满水,\n   将水抽到容器口需要多少功?\n\n3. 矩形闸门,宽2m,高3m,竖直放置,\n   顶边在水下1m,求压力\n\n4. 求三角形(顶点(0,h),底边y=0,宽2a)的形心\n\n5. 物体在t秒内的速度v=2t,求[0,5]内的平均速度\n\n6. 半径R的球,密度ρ,求对球面上一点的引力')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💭 小结')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 微元法:分割→近似→求和→取极限\n• 变力做功:W = ∫F(x)dx\n• 液体压力:F = ∫ρgh·l(x)dx\n• 质心:x̄ = ∫x·f(x)dx / ∫f(x)dx\n• 平均值:f̄ = ∫f(x)dx / (b-a)\n• 关键:建立微元dQ的表达式\n• 定积分是物理计算的核心工具!')
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
  }
}
