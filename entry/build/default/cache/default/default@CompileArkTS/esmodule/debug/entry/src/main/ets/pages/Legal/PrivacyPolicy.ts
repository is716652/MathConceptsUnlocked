if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface PrivacyPolicyPage_Params {
}
import router from "@ohos:router";
class PrivacyPolicyPage extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: PrivacyPolicyPage_Params) {
    }
    updateStateVars(params: PrivacyPolicyPage_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
    }
    aboutToBeDeleted() {
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.width('100%');
            Column.height('100%');
            Column.backgroundColor('#FFFFFF');
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            // 顶部栏
            Row.create();
            // 顶部栏
            Row.width('100%');
            // 顶部栏
            Row.padding({ left: 8, right: 8, top: 8, bottom: 8 });
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('← 返回');
            Button.fontSize(14);
            Button.fontColor('#3F51B5');
            Button.backgroundColor('#F0F0F0');
            Button.borderRadius(8);
            Button.padding({ left: 12, right: 12, top: 6, bottom: 6 });
            Button.onClick(() => router.back());
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('隐私政策');
            Text.layoutWeight(1);
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.textAlign(TextAlign.Center);
        }, Text);
        Text.pop();
        // 顶部栏
        Row.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            // 内容区（替换为正式《隐私政策》全文）
            Scroll.create();
            // 内容区（替换为正式《隐私政策》全文）
            Scroll.layoutWeight(1);
            // 内容区（替换为正式《隐私政策》全文）
            Scroll.scrollBar(BarState.On);
            // 内容区（替换为正式《隐私政策》全文）
            Scroll.edgeEffect(EdgeEffect.Spring);
        }, Scroll);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.width('100%');
            Column.padding(12);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('万物类象（HarmonyOS）APP隐私政策');
            Text.fontSize(18);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#4A4A4A');
            Text.margin({ bottom: 6 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.width('100%');
            Row.margin({ bottom: 10 });
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('更新日期：2025/10/27  ');
            Text.fontSize(12);
            Text.fontColor('#666666');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('生效日期：2025/10/27');
            Text.fontSize(12);
            Text.fontColor('#666666');
        }, Text);
        Text.pop();
        Row.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('导言');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('万物类象APP是一款由独立开发者（以下简称"我们"）提供的产品。您在使用我们的服务时，我们可能会收集和使用您的相关信息。我们希望通过本《隐私政策》向您说明，在使用我们的服务时，我们如何收集、使用、储存和分享这些信息，以及我们为您提供的访问、更新、控制和保护这些信息的方式。本《隐私政策》与您所使用的万物类象APP服务息息相关，希望您仔细阅读，在需要时，按照本《隐私政策》的指引，作出您认为适当的选择。本《隐私政策》中涉及的相关技术词汇，我们尽量以简明扼要的表述，并提供进一步说明的链接，以便您的理解。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('您使用或继续使用我们的服务，即表示您已阅读并理解本《隐私政策》。当前版本不收集您的个人信息。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.width('100%');
            Column.margin({ bottom: 8 });
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('如对本《隐私政策》或相关事宜有任何问题，请通过');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('is716652@qq.com');
            Text.fontSize(14);
            Text.fontColor('#1E88E5');
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('与我们联系');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        Column.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('1. 我们收集的信息');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('当前版本不收集您的个人信息或设备标识符（如设备ID、MAC地址、OAID/IMEI/IMSI 等），也不采集 SD 卡数据、安装列表或传感器数据。您无需注册账号即可浏览信息。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('为保障网络安全与体验优化，我们仅可能统计匿名访问量与崩溃信息，该数据不包含可识别个人身份的内容。如未来发生变更，将另行告知并征得您的同意。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('当前版本不会在静默或后台运行时进行任何敏感信息采集。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('权限调用说明及明示用途');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('为了向您提供完整服务体验，当前版本仅使用基本显示与导航能力，不调用涉及个人隐私的敏感权限。若未来确需启用敏感权限，我们将单独弹窗说明并征得您的明确同意。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('权限调用说明及静默状态信息收集');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('静默或后台运行时，当前版本不进行信息收集。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('权限调用列表（当前版本）');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('当前版本无需申请可识别个人身份的权限。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('静默及后台运行中的信息收集说明');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('静默或后台运行时，当前版本不进行信息收集，也不进行广告相关评估数据采集。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('第三方 SDK 接入情况：');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('当前版本未接入任何第三方 SDK，仅使用 HarmonyOS 官方 API。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('2. 信息的存储');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('2.1 信息存储的方式和期限\n· 当前版本不收集个人信息；应用仅在本地保存少量设置与缓存数据，不包含个人身份信息。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('2.2 信息存储的地域\n· 当前版本不进行个人信息的跨境传输或存储。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('3. 信息安全');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('我们使用各种安全技术和程序，以防信息的丢失、不当使用、未经授权阅览或披露。例如，在某些服务中，我们将利用加密技术（例如SSL）来保护您提供的个人信息。但请您理解，由于技术的限制以及可能存在的各种恶意手段，在互联网行业，即便竭尽所能加强安全措施，也不可能始终保证信息百分之百的安全。您需要了解，您接入我们的服务所用的系统和通讯网络，有可能因我们可控范围外的因素而出现问题。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('4. 我们如何使用信息');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('当前版本不收集您的个人信息；如未来需要收集，将用于提供与您选择的服务相关的明确目的，并在收集前告知并征得您的同意。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('5. 信息共享');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('当前版本不主动共享或转让您的个人信息至第三方，且未接入广告或统计类第三方 SDK。若未来需要共享，我们将事先征得您的明示同意。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('另外，根据相关法律法规及国家标准，以下情形中，我们可能会共享、转让、公开披露个人信息无需事先征得您的授权同意：\n· 与国家安全、国防安全直接相关的；\n· 与公共安全、公共卫生、重大公共利益直接相关的；\n· 犯罪侦查、起诉、审判和判决执行等直接相关的；\n· 出于维护个人信息主体或其他个人的生命、财产等重大合法权益但又很难得到本人同意的；\n· 个人信息主体自行向社会公众公开个人信息的；\n· 从合法公开披露的信息中收集个人信息的，如合法的新闻报道、政府信息公开等渠道。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('6. 您的权利');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('如未来收集个人信息，我们将提供查询、更正、删除、撤回同意等权利通道，并在产品内提供明确入口。您也可通过本《隐私政策》提供的联系方式与我们沟通。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('7. 变更');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('我们可能适时修订本《隐私政策》的条款。当变更发生时，我们会在版本更新时向您提示新的《隐私政策》，并向您说明生效日期。请您仔细阅读变更后的《隐私政策》内容，若您继续使用我们的服务，即表示您同意我们按照更新后的《隐私政策》处理您的个人信息。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('8. 未成年人保护');
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('我们鼓励父母或监护人指导未满十八岁的未成年人使用我们的服务。我们建议未成年人鼓励他们的父母或监护人阅读本《隐私政策》，并建议未成年人在提交的个人信息之前寻求父母或监护人的同意和指导。');
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        Column.pop();
        // 内容区（替换为正式《隐私政策》全文）
        Scroll.pop();
        Column.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "PrivacyPolicyPage";
    }
}
registerNamedRoute(() => new PrivacyPolicyPage(undefined, {}), "", { bundleName: "is716652.mathconcepts.unlocked", moduleName: "entry", pagePath: "pages/Legal/PrivacyPolicy", pageFullPath: "entry/src/main/ets/pages/Legal/PrivacyPolicy", integratedHsp: "false", moduleType: "followWithHap" });
