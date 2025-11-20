import router from '@ohos.router';

@Component
export struct YouyouFloatingButton {
  build() {
    Button() {
      Text('🤖')
        .fontSize(24)
        .fontColor('#FFFFFF')
    }
    .width(56)
    .height(56)
    .backgroundColor('#2196F3')
    .borderRadius(28)
    .shadow({ radius: 8, color: '#402196F3', offsetY: 4 })
    .position({ x: '85%', y: '85%' })
    .zIndex(999)
    .onClick(() => {
      router.pushUrl({ url: 'pages/Youyou/YouyouChat' });
    })
  }
}
