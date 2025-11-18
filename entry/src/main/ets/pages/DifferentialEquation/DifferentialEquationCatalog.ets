import router from '@ohos.router';

interface Chapter {
  title: string;
  description: string;
  route: string;
  color: string;
}

@Entry
@Component
struct DifferentialEquationCatalog {
  private chapters: Array<Chapter> = [
    {title:'第1章 微分方程的概念',description:'微分方程、阶、解、通解、特解',route:'pages/DifferentialEquation/FirstOrderDE',color:'#42A5F5'},
    {title:'第2章 可分离变量方程',description:'分离变量法、齐次方程',route:'pages/DifferentialEquation/SeparableDE',color:'#66BB6A'},
    {title:'第3章 一阶线性微分方程',description:'线性方程、常数变易法、伯努利方程',route:'pages/DifferentialEquation/LinearDE',color:'#FFA726'},
    {title:'第4章 高阶微分方程',description:'可降阶方程、线性方程解的结构',route:'pages/DifferentialEquation/HigherOrderDE',color:'#AB47BC'},
    {title:'第5章 常系数线性微分方程',description:'特征方程法、待定系数法',route:'pages/DifferentialEquation/ConstantCoefficients',color:'#EC407A'},
    {title:'第6章 微分方程应用',description:'几何应用、物理应用、工程问题',route:'pages/DifferentialEquation/DEApplications',color:'#7E57C2'},
    {title:'第7章 微分方程组',description:'消元法、矩阵法',route:'pages/DifferentialEquation/SystemsDE',color:'#26A69A'},
    {title:'第8章 综合习题',description:'各类方程求解、应用题',route:'pages/DifferentialEquation/DEExercises',color:'#5C6BC0'}
  ];
  build() {
    Column() {
      Row() {
        Button('← 返回').fontSize(14).fontColor('#3F51B5').backgroundColor('#F0F0F0').borderRadius(8).padding({left:12,right:12,top:6,bottom:6}).onClick(()=>router.back())
        Text('微分方程').layoutWeight(1).fontSize(18).fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
      }.width('100%').padding({left:8,right:8,top:4,bottom:4})
      Scroll() {
        Column({ space: 12 }) {
          Text('📐 微分方程学习指南').fontSize(20).fontWeight(FontWeight.Bold).fontColor('#2196F3').margin({top:8})
          Text('微分方程描述变化规律,是数学建模的核心工具。从人口增长到电路分析,微分方程无处不在。').fontSize(14).lineHeight(22).padding(12).backgroundColor('#E3F2FD').borderRadius(8)
          ForEach(this.chapters,(chapter: Chapter,index: number)=>{
            Column() {
              Row() {
                Text(`${index+1}`).fontSize(16).fontWeight(FontWeight.Bold).fontColor('#FFFFFF').width(32).height(32).textAlign(TextAlign.Center).backgroundColor(chapter.color).borderRadius(16).margin({right:12})
                Column({space:4}) {
                  Text(chapter.title).fontSize(16).fontWeight(FontWeight.Bold)
                  Text(chapter.description).fontSize(13).fontColor('#666666')
                }.alignItems(HorizontalAlign.Start).layoutWeight(1)
              }.width('100%')
            }.width('100%').padding(12).backgroundColor('#FFFFFF').borderRadius(12).shadow({radius:4,color:'#20000000',offsetY:2}).onClick(()=>router.pushUrl({url:chapter.route}))
          })
          Text('🎯 学习要点').fontSize(18).fontWeight(FontWeight.Bold).fontColor('#FF9800').margin({top:8})
          Text('• 核心:dy/dx=f(x,y)\n• 方法:分离变量、常数变易、特征方程\n• 应用:物理、生物、经济、工程\n• 关键:识别方程类型,选择合适方法').fontSize(14).lineHeight(24).padding(12).backgroundColor('#FFF3E0').borderRadius(8)
        }.width('100%').padding(12)
      }.layoutWeight(1).scrollBar(BarState.On).edgeEffect(EdgeEffect.Spring)
    }.width('100%').height('100%').backgroundColor('#F5F5F5')
  }
}
