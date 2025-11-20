import router from '@ohos.router';
import { YouyouService } from '../../services/YouyouService';

interface Message {
  id: number;
  type: string; // 'user' | 'youyou'
  content: string;
  timestamp: number;
}

@Entry
@Component
struct YouyouChat {
  @State messages: Message[] = [
    {
      id: 1,
      type: 'youyou',
      content: '你好！我是智能助手悠悠 🤖\n\n我可以帮你：\n• 解答数学概念\n• 查找公式定理\n• 讲解例题\n• 推荐练习题\n\n试着问我问题吧！',
      timestamp: Date.now()
    }
  ];
  @State inputText: string = '';
  private scroller: Scroller = new Scroller();

  build() {
    Column() {
      // 顶部栏
      Row() {
        Button('← 返回')
          .fontSize(14)
          .fontColor('#3F51B5')
          .backgroundColor('#F0F0F0')
          .borderRadius(8)
          .padding({ left: 12, right: 12, top: 6, bottom: 6 })
          .onClick(() => router.back())

        Row() {
          Text('🤖')
            .fontSize(32)
            .margin({ right: 8 })
          
          Column() {
            Text('智能助手 悠悠')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text('在线')
              .fontSize(12)
              .fontColor('#4CAF50')
          }
          .alignItems(HorizontalAlign.Start)
        }
        .layoutWeight(1)
        .margin({ left: 12 })
        
        Button('清空')
          .fontSize(12)
          .fontColor('#999999')
          .backgroundColor('#F5F5F5')
          .onClick(() => {
            this.messages = [
              {
                id: 1,
                type: 'youyou',
                content: '聊天已清空。有什么可以帮你的吗？ 😊',
                timestamp: Date.now()
              }
            ];
          })
      }
      .width('100%')
      .padding(12)
      .backgroundColor('#FFFFFF')
      .shadow({ radius: 2, color: '#10000000', offsetY: 1 })

      // 聊天消息区
      Scroll(this.scroller) {
        Column({ space: 12 }) {
          ForEach(this.messages, (msg: Message) => {
            if (msg.type === 'user') {
              // 用户消息（右侧）
              Row() {
                Column() {
                  Text(msg.content)
                    .fontSize(15)
                    .fontColor('#FFFFFF')
                    .lineHeight(22)
                }
                .padding(12)
                .backgroundColor('#2196F3')
                .borderRadius({ topLeft: 12, topRight: 12, bottomLeft: 12, bottomRight: 4 })
                .constraintSize({ maxWidth: '70%' })
              }
              .width('100%')
              .justifyContent(FlexAlign.End)
              .padding({ right: 12 })
            } else {
              // 悠悠消息（左侧）
              Row() {
                Text('🤖')
                  .fontSize(28)
                  .margin({ right: 8, top: 4 })
                
                Column() {
                  Text(msg.content)
                    .fontSize(15)
                    .lineHeight(22)
                }
                .padding(12)
                .backgroundColor('#F5F5F5')
                .borderRadius({ topLeft: 12, topRight: 12, bottomLeft: 4, bottomRight: 12 })
                .constraintSize({ maxWidth: '70%' })
              }
              .width('100%')
              .justifyContent(FlexAlign.Start)
              .alignItems(VerticalAlign.Top)
              .padding({ left: 12 })
            }
          })
        }
        .width('100%')
        .padding({ top: 12, bottom: 12 })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Auto)
      .edgeEffect(EdgeEffect.Spring)

      // 快捷按钮区
      Row({ space: 8 }) {
        Button('📚 概念')
          .fontSize(13)
          .backgroundColor('#E3F2FD')
          .fontColor('#2196F3')
          .height(32)
          .onClick(() => {
            this.sendMessage('什么是导数');
          })
        
        Button('📝 例题')
          .fontSize(13)
          .backgroundColor('#FFF3E0')
          .fontColor('#FF9800')
          .height(32)
          .onClick(() => {
            this.sendMessage('给我一些积分例题');
          })
        
        Button('🎯 练习')
          .fontSize(13)
          .backgroundColor('#F3E5F5')
          .fontColor('#9C27B0')
          .height(32)
          .onClick(() => {
            this.sendMessage('我想做练习题');
          })
        
        Button('💡 帮助')
          .fontSize(13)
          .backgroundColor('#E8F5E9')
          .fontColor('#4CAF50')
          .height(32)
          .onClick(() => {
            this.sendMessage('帮助');
          })
      }
      .width('100%')
      .padding({ left: 12, right: 12, top: 8, bottom: 8 })
      .backgroundColor('#FAFAFA')

      // 底部输入区
      Row({ space: 8 }) {
        TextInput({ placeholder: '输入你的问题...', text: this.inputText })
          .layoutWeight(1)
          .height(40)
          .onChange((value: string) => {
            this.inputText = value;
          })
          .onSubmit(() => {
            if (this.inputText.length > 0) {
              this.sendMessage(this.inputText);
              this.inputText = '';
            }
          })
        
        Button('发送')
          .fontSize(14)
          .height(40)
          .backgroundColor('#2196F3')
          .fontColor('#FFFFFF')
          .onClick(() => {
            if (this.inputText.length > 0) {
              this.sendMessage(this.inputText);
              this.inputText = '';
            }
          })
      }
      .width('100%')
      .padding(12)
      .backgroundColor('#FFFFFF')
      .shadow({ radius: 2, color: '#10000000', offsetY: -1 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }

  sendMessage(content: string) {
    // 添加用户消息
    const userMsg: Message = {
      id: this.messages.length + 1,
      type: 'user',
      content: content,
      timestamp: Date.now()
    };
    this.messages.push(userMsg);

    // 滚动到底部
    setTimeout(() => {
      this.scroller.scrollEdge(Edge.Bottom);
    }, 50);

    // 显示"正在思考"
    const thinkingMsg: Message = {
      id: this.messages.length + 1,
      type: 'youyou',
      content: '正在思考... 🤔',
      timestamp: Date.now()
    };
    this.messages.push(thinkingMsg);

    setTimeout(() => {
      this.scroller.scrollEdge(Edge.Bottom);
    }, 100);

    // 生成回答
    setTimeout(() => {
      const answer = YouyouService.generateAnswer(content);
      
      // 替换思考消息为真实回答
      this.messages.pop();
      const youyouMsg: Message = {
        id: this.messages.length + 1,
        type: 'youyou',
        content: answer,
        timestamp: Date.now()
      };
      this.messages.push(youyouMsg);
      
      // 滚动到底部
      setTimeout(() => {
        this.scroller.scrollEdge(Edge.Bottom);
      }, 50);
    }, 800);
  }
}
