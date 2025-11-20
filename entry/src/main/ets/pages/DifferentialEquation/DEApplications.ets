import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct DEApplications {
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

        Text('微分方程应用')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('微分方程的实际应用')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('微分方程广泛应用于:\n• 人口模型\n• 放射性衰变\n• 牛顿冷却定律\n• 简谐振动\n• 电路问题\n\n核心思想: 建立变化率关系式')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 人口增长模型')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('马尔萨斯模型:\n\ndN/dt = kN\n\nN: 人口数量\nk: 增长率(常数)\nt: 时间\n\n解: N = N₀e^(kt)\n\nN₀: 初始人口\n\n意义: 人口按指数规律增长')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📝 例1: 某地区人口按2%/年增长, 求20年后人口翻倍吗?')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n用指数增长模型\n\n解:\nk = 0.02\nN = N₀e^(0.02t)\n\n求翻倍时间:\n2N₀ = N₀e^(0.02t)\n2 = e^(0.02t)\nln(2) = 0.02t\nt = ln(2)/0.02 ≈ 0.693/0.02 ≈ 34.7年\n\n20年后:\nN = N₀e^(0.02×20) = N₀e^0.4 ≈ 1.49N₀\n\n答: 20年后未翻倍, 约为初始的1.49倍')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('📌 放射性衰变')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('衰变规律:\n\ndN/dt = -λN\n\nλ: 衰变常数(>0)\n负号表示衰减\n\n解: N = N₀e^(-λt)\n\n半衰期T:\nN₀/2 = N₀e^(-λT)\nT = ln(2)/λ')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📌 牛顿冷却定律')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('冷却方程:\n\ndT/dt = -k(T - T₀)\n\nT: 物体温度\nT₀: 环境温度\nk: 冷却系数(>0)\n\n解: T = T₀ + (T₁ - T₀)e^(-kt)\n\nT₁: 初始温度\n\n特点: 温度差按指数衰减')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📝 例2: 开水从100°降到60°用10分钟, 问降到40°要多久?(室温20°)')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n牛顿冷却, 两次代入求k\n\n解:\nT₀ = 20, T₁ = 100\n\nT = 20 + 80e^(-kt)\n\nt=10时, T=60:\n60 = 20 + 80e^(-10k)\n40 = 80e^(-10k)\ne^(-10k) = 1/2\n-10k = ln(1/2) = -ln(2)\nk = ln(2)/10\n\n求降到40°的时间:\n40 = 20 + 80e^(-kt)\n20 = 80e^(-kt)\ne^(-kt) = 1/4\n-kt = ln(1/4) = -2ln(2)\nt = 2ln(2)/k = 2ln(2)/(ln(2)/10) = 20分钟\n\n答: 20分钟')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('📌 简谐振动')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('弹簧振动方程:\n\nm·x\'\' + c·x\' + k·x = 0\n\nm: 质量\nc: 阻尼系数\nk: 弹性系数\n\n无阻尼(c=0):\nx\'\' + ω²x = 0\nω = √(k/m)\n解: x = Acos(ωt + φ)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFE0B2')
            .borderRadius(8)

          Text('📝 例3: 质量2kg, 弹性系数8N/m, 初位移1m, 初速度0, 求运动方程')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n简谐振动, 用初值条件\n\n解:\nm = 2, k = 8\nω = √(k/m) = √(8/2) = 2\n\n方程: x\'\' + 4x = 0\n\n特征方程: r² + 4 = 0\nr = ±2i\n\n通解: x = C₁cos(2t) + C₂sin(2t)\n\n初值条件:\nx(0) = 1: C₁ = 1\nx\'(0) = 0: -2C₁sin(0) + 2C₂cos(0) = 0\n           2C₂ = 0, C₂ = 0\n\n答: x = cos(2t)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFCCBC')
            .borderRadius(8)

          Text('📌 电路问题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('RC电路:\n\nR·i + q/C = E(t)\n\ni = dq/dt (电流)\nq: 电荷量\nR: 电阻\nC: 电容\nE: 电压\n\n化为: R(dq/dt) + q/C = E\n\nRL电路:\nL(di/dt) + Ri = E\n\nL: 电感')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#ECEFF1')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 人口按3%/年增长, 多久翻倍?\n提示: dN/dt = 0.03N\n\n2. 某元素半衰期100年, 200年后剩多少?\n提示: N = N₀e^(-λt)\n\n3. 水温从90°降到30°(室温20°)用20分钟, 降到25°需多久?\n提示: 牛顿冷却\n\n4. 弹簧振子 x\'\' + 4x = 0, x(0)=1, x\'(0)=0, 求解\n提示: 简谐振动\n\n5. RC电路 R=10Ω, C=0.1F, E=100V, 求电流\n提示: 一阶线性方程')
            .width('100%')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💡 建模技巧')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('建立微分方程模型的步骤:\n\n1️⃣ 理解问题\n   • 确定变量\n   • 找出已知条件\n\n2️⃣ 建立方程\n   • 根据物理规律\n   • 几何关系\n   • 变化率关系\n\n3️⃣ 求解方程\n   • 选择合适方法\n   • 代入初值/边值\n\n4️⃣ 验证结果\n   • 检查单位\n   • 极端情况检验\n\n常用规律:\n• 增长/衰减: dN/dt = kN\n• 冷却: dT/dt = -k(T-T₀)\n• 振动: x\'\' + ω²x = 0')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#ECEFF1')
            .borderRadius(8)

          Text('💭 小结')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('• 人口: N = N₀e^(kt)\n• 衰变: N = N₀e^(-λt)\n• 冷却: T = T₀+(T₁-T₀)e^(-kt)\n• 振动: x = Acos(ωt+φ)\n• 关键: 建立变化率方程\n• 方法: 分离变量或特征方程')
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