import router from '@ohos.router';
import { YouyouFloatingButton } from '../../components/YouyouFloatingButton';

@Entry
@Component
struct DefiniteIntegralConcept {
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

        Text('定积分的概念')
          .layoutWeight(1)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ left: 8, right: 8, top: 4, bottom: 4 })

      Scroll() {
        Column({ space: 16 }) {
          Text('什么是定积分?')
            .width('100%')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2196F3')

          Text('定积分解决的核心问题是:如何计算不规则图形的面积?\n\n不定积分给出"函数族" (F(x)+C),定积分给出"具体数值"。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)

          Text('📌 引入问题:求曲边梯形面积')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')

          Text('问题:求由曲线 y=f(x)、x轴、直线 x=a 和 x=b 围成的面积。\n\n传统几何公式无法直接求解,需要用"分割-近似-求和-取极限"的思想。')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)

          Text('🔍 定积分的定义(黎曼积分)')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#4CAF50')

          Text('步骤:\n\n1️⃣ 分割:将区间 [a,b] 分成 n 个小区间\n   Δxᵢ = (b-a)/n\n\n2️⃣ 近似:在每个小区间上取点 ξᵢ,\n   小矩形面积 = f(ξᵢ)·Δxᵢ\n\n3️⃣ 求和:所有小矩形面积之和\n   Sₙ = Σf(ξᵢ)·Δxᵢ\n\n4️⃣ 取极限:n→∞,Δx→0\n   ∫ₐᵇ f(x)dx = lim(n→∞) Σf(ξᵢ)·Δxᵢ')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)

          Text('💡 记号说明')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#9C27B0')

          Text('∫ₐᵇ f(x) dx\n\n• ∫ : 积分号(拉长的S,Sum的首字母)\n• a : 下限(积分起点)\n• b : 上限(积分终点)\n• f(x) : 被积函数\n• dx : 积分变量(x的微小变化)\n• [a,b] : 积分区间')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#F3E5F5')
            .borderRadius(8)

          Text('📐 几何意义')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('当 f(x) ≥ 0 时:\n∫ₐᵇ f(x)dx = 曲边梯形面积\n\n当 f(x) 有正有负时:\n∫ₐᵇ f(x)dx = 上方面积 - 下方面积\n(x轴上方为正,下方为负)\n\n特别地:\n∫ₐᵃ f(x)dx = 0  (上下限相同)\n∫ₐᵇ f(x)dx = -∫ᵇₐ f(x)dx  (交换上下限,符号相反)')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#FFEBEE')
            .borderRadius(8)

          Text('📚 基础例题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#795548')

          Text('例1: 用定义计算 ∫₀¹ x dx\n\n解:\n1️⃣ 分割:[0,1] 分成 n 等份\n   Δx = 1/n\n\n2️⃣ 取点:ξᵢ = i/n (右端点)\n\n3️⃣ 求和:\n   Sₙ = Σ(i/n)·(1/n)\n      = (1/n²)·Σi\n      = (1/n²)·[n(n+1)/2]\n      = (n+1)/(2n)\n\n4️⃣ 取极限:\n   lim(n→∞) (n+1)/(2n) = 1/2\n\n因此 ∫₀¹ x dx = 1/2')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#EFEBE9')
            .borderRadius(8)

          Text('例2: 用几何意义计算 ∫₋₂² √(4-x²) dx\n\n解:\ny = √(4-x²)\n两边平方:x² + y² = 4  (y≥0)\n\n这是圆心在原点、半径为2的上半圆。\n\n∫₋₂² √(4-x²) dx = 半圆面积\n                = (1/2)πr²\n                = (1/2)π·2²\n                = 2π')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#D7CCC8')
            .borderRadius(8)

          Text('例3: 利用定义求 ∫₁² 2x dx\n\n几何意义:直线 y=2x,x轴,x=1,x=2 围成的梯形\n\n梯形面积公式:\nS = (1/2)(上底+下底)×高\n  = (1/2)(2+4)×1\n  = 3\n\n所以 ∫₁² 2x dx = 3')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#BCAAA4')
            .borderRadius(8)

          Text('例4: 比较大小 ∫₀¹ x dx 和 ∫₀¹ x² dx\n\n分析:在[0,1]上,x² < x\n\n画图:y=x² 的曲线在 y=x 下方\n\n结论:∫₀¹ x² dx < ∫₀¹ x dx\n\n(后面会学到精确值:1/3 < 1/2)')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#A1887F')
            .borderRadius(8)

          Text('例5: 用几何意义计算 ∫₀³ 2 dx\n\n解:\ny = 2 是水平直线\n\n矩形面积 = 长×宽 = (3-0)×2 = 6\n\n所以 ∫₀³ 2 dx = 6')
            .width('100%')
            .fontSize(14)
            .lineHeight(22)
            .fontFamily('monospace')
            .padding(12)
            .backgroundColor('#8D6E63')
            .borderRadius(8)

          Text('💭 通俗理解')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#3F51B5')

          Text('想象你要计算不规则池塘的面积:\n\n• 方法:将池塘划分成很多小方格\n• 近似:每个方格当作矩形\n• 求和:所有小矩形面积加起来\n• 精确:方格越小,越接近真实面积\n\n这就是定积分的思想!\n\n生活中的应用:\n• GPS计算行驶路程(速度积分)\n• 水库蓄水量(横截面积积分)\n• 不规则土地面积测量')
            .width('100%')
            .fontSize(15)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E8EAF6')
            .borderRadius(8)

          Text('🎯 定积分存在的条件')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#009688')

          Text('定理:若 f(x) 在 [a,b] 上满足下列条件之一,则定积分存在:\n\n1️⃣ f(x) 连续\n2️⃣ f(x) 有有限个第一类间断点\n3️⃣ f(x) 单调\n\n常见函数都满足,所以定积分一般都存在。')
            .width('100%')
            .fontSize(14)
            .lineHeight(24)
            .padding(12)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)

          Text('🎯 练习题')
            .width('100%')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF5722')

          Text('1. 用几何意义计算 ∫₀¹ 2 dx\n\n2. 用几何意义计算 ∫₋₁¹ √(1-x²) dx\n\n3. 比较大小:∫₀^(π/2) sin x dx 和 ∫₀^(π/2) cos x dx\n\n4. 求 ∫₋₁² |x| dx (提示:分段考虑)\n\n5. 已知 ∫₀¹ f(x)dx = 2,求 ∫₀¹ 3f(x)dx\n\n6. 用定义计算 ∫₀² 3 dx\n\n7. 判断:∫₁² (1/x)dx 是否存在?\n\n8. 画图说明 ∫₋₁¹ x³ dx 的几何意义\n\n9. 用几何意义计算 ∫₋₃³ √(9-x²) dx\n\n10. 已知 ∫ₐᵇ f(x)dx = -∫ᵇₐ f(x)dx,说明这个性质')
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

          Text('• 定积分 = 分割-近似-求和-取极限\n• ∫ₐᵇ f(x)dx 表示具体数值\n• 几何意义:曲边梯形面积(带符号)\n• ∫ₐᵃ f(x)dx = 0\n• ∫ₐᵇ f(x)dx = -∫ᵇₐ f(x)dx\n• 连续函数的定积分一定存在\n• 定积分是不定积分的"升级版"')
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