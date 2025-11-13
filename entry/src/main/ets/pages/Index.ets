import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State showPolicyDialog: boolean = false;

  aboutToAppear() {
  }

  build() {
    Stack() {
      Image($r('app.media.Logo'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
        .onClick(() => router.pushUrl({ url: 'pages/Catalog/HighMathCatalog' }))

      Column() {
        Row() {
          Button('隐私政策')
            .fontSize(14)
            .fontColor('#3F51B5')
            .backgroundColor('#F0F0F0')
            .borderRadius(8)
            .padding({ left: 12, right: 12, top: 6, bottom: 6 })
            .onClick(() => router.pushUrl({ url: 'pages/Legal/PrivacyPolicy' }))

          Button('用户协议')
            .margin({ left: 8 })
            .fontSize(14)
            .fontColor('#3F51B5')
            .backgroundColor('#F0F0F0')
            .borderRadius(8)
            .padding({ left: 12, right: 12, top: 6, bottom: 6 })
            .onClick(() => router.pushUrl({ url: 'pages/Legal/UserAgreement' }))
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.End)
      .padding({ bottom: 16 })
    }
    .height('100%')
    .width('100%')
  }
}