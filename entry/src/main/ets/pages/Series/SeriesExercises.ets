import router from '@ohos.router';
@Entry
@Component
struct SeriesExercises {
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('级数习题精讲').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({ space: 16 }) {
          Text('级数综合习题').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3')
          Text('通过综合练习巩固级数知识,提高解题能力。').fontSize(15).lineHeight(24)
          Text('🎯 判别收敛性').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800')
          Text('题1: 判断Σ(n!)²/(2n)!的收敛性\n题2: 判断Σ(1/n)^(1/n)的收敛性\n题3: 判断Σn²/2ⁿ的收敛性\n题4: 判断Σ(-1)ⁿ·n/(n²+1)的收敛性\n题5: 判断Σ1/(n·ln n)的收敛性').fontSize(14).lineHeight(24).padding(12).backgroundColor('#FFF3E0').borderRadius(8)
          Text('🎯 求收敛域').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#4CAF50')
          Text('题6: 求Σn²xⁿ的收敛域\n题7: 求Σxⁿ/(n·2ⁿ)的收敛域\n题8: 求Σ(x-2)ⁿ/nⁿ的收敛域\n题9: 求Σ(2x+1)ⁿ/n!的收敛域\n题10: 求Σ(-1)ⁿxⁿ/√n的收敛域').fontSize(14).lineHeight(24).padding(12).backgroundColor('#E8F5E9').borderRadius(8)
          Text('🎯 函数展开').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#9C27B0')
          Text('题11: 将1/(1+x²)展开成幂级数\n题12: 将ln(2+x)展开成x的幂级数\n题13: 将e^(-x²)展开(前4项)\n题14: 将sin²x展开成傅里叶级数\n题15: 将f(x)=x²,x∈[-π,π]展开').fontSize(14).lineHeight(24).padding(12).backgroundColor('#F3E5F5').borderRadius(8)
          Text('🎯 综合应用').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF5722')
          Text('题16: 用级数求∫₀¹ e^(-x²)dx(4项)\n题17: 计算Σn/2ⁿ的和\n题18: 用级数证明π/4=1-1/3+1/5-1/7+...\n题19: 求lim(n→∞)(1+1/2+1/3+...+1/n-ln n)\n题20: 已知Σaₙxⁿ=x/(1-x)²,求aₙ').fontSize(14).lineHeight(24).padding(12).backgroundColor('#FFEBEE').borderRadius(8)
          Text('💭 解题技巧').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#3F51B5')
          Text('• 判别收敛:先看必要条件,再选判别法\n• 正项级数:比较、比值、根值\n• 交错级数:莱布尼茨、绝对收敛\n• 幂级数:先求R,再讨论端点\n• 展开:直接法、间接法、运算法').fontSize(15).lineHeight(24).padding(12).backgroundColor('#E8EAF6').borderRadius(8)
          Text('💭 常见错误').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#607D8B')
          Text('• 忘记讨论端点收敛性\n• 混淆收敛与绝对收敛\n• 判别法选择不当\n• 展开式写错\n• 忘记收敛域').fontSize(15).lineHeight(24)
        }.width('100%').padding(16)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#FFFFFF')
  }
}
