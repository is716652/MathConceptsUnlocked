import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct HigherOrderDE {
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

        Text('高阶微分方程')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('高阶微分方程与可降阶类型')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('高阶微分方程: 包含二阶及以上导数的微分方程。\n\n本章重点: 三种可降阶的高阶方程类型\n• 不含y和低阶导数\n• 不显含y\n• 不显含x')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 类型1: y^(n) = f(x)')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('特点: 方程右边只含x,不含y及其导数\n\n解法: 连续积分n次\n\n通解形式:\ny = ∫...∫f(x)dx...dx + C₁x^(n-1) + C₂x^(n-2) + ... + Cₙ')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('📝 例1: 求解 y\'\' = 6x')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n类型1, 连续积分两次\n\n解:\ny\'\' = 6x\n\n第一次积分:\ny\' = ∫6x dx = 3x² + C₁\n\n第二次积分:\ny = ∫(3x² + C₁)dx = x³ + C₁x + C₂\n\n答案: y = x³ + C₁x + C₂')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFECB3')
            .borderRadius(8)

          Text('📌 类型2: y\'\' = f(x, y\')')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('特点: 不显含y (但含y\')\n\n解法:\n1️⃣ 令 p = y\', 则 y\'\' = p\'\n2️⃣ 原方程化为: p\' = f(x, p)\n3️⃣ 这是关于p的一阶方程,求出p\n4️⃣ 由 y\' = p 积分得 y')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('📝 例2: 求解 xy\'\' = y\', y(1)=0, y\'(1)=2')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n不显含y, 令p=y\'\n\n解:\nxy\'\' = y\'\n\n令 p = y\', 则 y\'\' = p\':\nxp\' = p\n\ndp/p = dx/x\n\nln|p| = ln|x| + C₁\n\np = C₁x\n\ny\' = C₁x\n\ny = ∫C₁x dx = C₁x²/2 + C₂\n\n代入 y(1)=0:\n0 = C₁/2 + C₂\n\n代入 y\'(1)=2:\n2 = C₁·1 → C₁ = 2\n\nC₂ = -1\n\ny = x² - 1\n\n答案: y = x² - 1')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#C8E6C9')
            .borderRadius(8)

          Text('📌 类型3: y\'\' = f(y, y\')')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('特点: 不显含x (但含y和y\')\n\n解法:\n1️⃣ 令 p = y\', 则 y\'\' = p·dp/dy\n2️⃣ 原方程化为: p·dp/dy = f(y, p)\n3️⃣ 这是关于p的一阶方程(自变量是y)\n4️⃣ 求出p=φ(y), 即dy/dx=φ(y)\n5️⃣ 分离变量积分得y')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📝 例3: 求解 yy\'\' = (y\')²')
            .width('100%')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF6F00')

          Text('解题思路:\n不显含x, 令p=y\', y\'\'=p·dp/dy\n\n解:\nyy\'\' = (y\')²\n\n令 p = y\', 则 y\'\' = p·dp/dy:\ny·p·dp/dy = p²\n\ny·dp/dy = p\n\ndp/p = dy/y\n\nln|p| = ln|y| + C₁\n\np = C₁y\n\ny\' = C₁y\n\ndy/y = C₁dx\n\nln|y| = C₁x + C₂\n\ny = e^(C₁x+C₂) = Ae^(C₁x)\n\n答案: y = Ae^(Cx) (A,C为常数)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E1BEE7')
            .borderRadius(8)

          Text('📌 线性微分方程解的结构')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('n阶线性齐次方程: y^(n) + a₁y^(n-1) + ... + aₙy = 0\n\n解的性质:\n1️⃣ 若y₁,y₂是解, 则C₁y₁+C₂y₂也是解(叠加原理)\n2️⃣ 若y₁,y₂,...,yₙ线性无关, 则通解为:\n   Y = C₁y₁ + C₂y₂ + ... + Cₙyₙ\n\n非齐次方程: y^(n) + a₁y^(n-1) + ... + aₙy = f(x)\n\n通解结构:\ny = Y + y*, 其中\n• Y: 齐次方程通解\n• y*: 非齐次方程特解')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFE0B2')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 求解 y\'\' = e^x\n提示: 连续积分\n\n2. 求解 y\'\' = (y\')²\n提示: 令p=y\'\n\n3. 求解 y\'\' = 2yy\'\n提示: 不显含x\n\n4. 求解 x²y\'\' = 2xy\'\n提示: 令p=y\'\n\n5. 判断e^x和e^(-x)是否线性无关\n提示: 看比值\n\n6. 求解 y\'\'\' = 6\n提示: 积分3次\n\n7. 已知y₁=x, y₂=x²是齐次方程的解, 写出通解\n提示: Y = C₁y₁ + C₂y₂')
            .width('100%')
            .fontSize(15)
            .lineHeight(28)
            .padding(12)
            .backgroundColor('#FFF8E1')
            .borderRadius(8)

          Text('💡 解题技巧')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#607D8B')

          Text('可降阶方程判断:\n\n1️⃣ 不含y及低阶导数:\n   y^(n) = f(x)\n   → 连续积分n次\n\n2️⃣ 不显含y:\n   y\'\' = f(x, y\')\n   → 令p = y\', 降一阶\n\n3️⃣ 不显含x:\n   y\'\' = f(y, y\')\n   → 令p = y\', y\'\'=p·dp/dy\n\n关键词识别:\n"不含y" → 令p=y\'\n"不含x" → p·dp/dy\n\n线性方程重点:\n• 解的叠加原理\n• 齐次+特解结构\n• 线性无关性')
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

          Text('• 可降阶: 三种类型要记牢\n• 类型1: y^(n)=f(x) 连续积分\n• 类型2: 不含y, 令p=y\'\n• 类型3: 不含x, p·dp/dy\n• 线性方程: 解的结构定理\n• 通解 = 齐次通解 + 特解')
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