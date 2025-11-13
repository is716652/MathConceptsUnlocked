if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface UserAgreementPage_Params {
    showPrivacy?: boolean;
}
import router from "@ohos:router";
class UserAgreementPage extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.__showPrivacy = new ObservedPropertySimplePU(false, this, "showPrivacy");
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: UserAgreementPage_Params) {
        if (params.showPrivacy !== undefined) {
            this.showPrivacy = params.showPrivacy;
        }
    }
    updateStateVars(params: UserAgreementPage_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
        this.__showPrivacy.purgeDependencyOnElmtId(rmElmtId);
    }
    aboutToBeDeleted() {
        this.__showPrivacy.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private __showPrivacy: ObservedPropertySimplePU<boolean>;
    get showPrivacy() {
        return this.__showPrivacy.get();
    }
    set showPrivacy(newValue: boolean) {
        this.__showPrivacy.set(newValue);
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Stack.create();
            Stack.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(7:5)", "entry");
            Stack.width('100%');
            Stack.height('100%');
        }, Stack);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(8:7)", "entry");
            Column.width('100%');
            Column.height('100%');
            Column.backgroundColor('#FFFFFF');
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            // 顶部栏
            Row.create();
            Row.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(10:7)", "entry");
            // 顶部栏
            Row.width('100%');
            // 顶部栏
            Row.padding({ left: 8, right: 8, top: 8, bottom: 8 });
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('← 返回');
            Button.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(11:9)", "entry");
            Button.fontSize(14);
            Button.fontColor('#3F51B5');
            Button.backgroundColor('#F0F0F0');
            Button.borderRadius(8);
            Button.padding({ left: 12, right: 12, top: 6, bottom: 6 });
            Button.onClick(() => router.back());
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('用户协议');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(19:9)", "entry");
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
            // 内容区（替换为正式《用户协议》全文）
            Scroll.create();
            Scroll.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(30:7)", "entry");
            // 内容区（替换为正式《用户协议》全文）
            Scroll.layoutWeight(1);
            // 内容区（替换为正式《用户协议》全文）
            Scroll.scrollBar(BarState.On);
            // 内容区（替换为正式《用户协议》全文）
            Scroll.edgeEffect(EdgeEffect.Spring);
        }, Scroll);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(31:9)", "entry");
            Column.width('100%');
            Column.padding(12);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('万物类象APP用户协议');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(32:11)", "entry");
            Text.fontSize(18);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#4A4A4A');
            Text.margin({ bottom: 10 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('总则');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(37:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('万物类象APP由独立开发者（以下简称"我们"）提供。本协议是你（以下简称"用户"）与我们之间就使用本软件与服务达成的约定。你开始使用或继续使用，视为已阅读并同意本协议。当前版本无需账号即可浏览信息。');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(42:11)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('服务内容');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(48:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('本软件的核心业务功能为信息服务与内容浏览。我们可能根据产品迭代对功能进行调整或优化，并以更新日志或站内提示的方式予以说明。');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(53:11)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('用户行为规范');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(59:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('你承诺遵守法律法规与社会公德，不得：\n· 发布或传播违法、侵权、低俗等不当内容；\n· 以任何方式干扰、破坏软件正常运行（含爬虫、攻击、绕过安全机制等）；\n· 未经许可对软件或相关内容进行复制、改作、分发、商业化利用。');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(64:11)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('知识产权');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(70:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('本软件及展示内容的相关权利归我们或合法权利人所有。除法律允许或经我们书面授权外，用户仅可在个人、非商业目的范围内使用。');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(75:11)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('隐私保护');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(81:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(86:11)", "entry");
            Row.width('100%');
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('我们重视你的隐私保护，当前版本不收集个人信息；具体做法请参阅');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(87:13)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('《隐私政策》');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(92:13)", "entry");
            Text.fontSize(14);
            Text.fontColor('#1E88E5');
            Text.onClick(() => { this.showPrivacy = true; });
        }, Text);
        Text.pop();
        Row.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('免责声明与责任限制');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(99:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('本软件按"现状"和"可用性"提供，我们不对服务的准确性、适用性、持续性作出保证。因使用或无法使用本软件而造成的间接或附带损失，我们不承担责任。对第三方链接或服务的内容与安全性，我们不作担保。');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(104:11)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('变更与终止');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(110:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('我们可能适时更新本协议，并在版本更新或页面提示中说明。若你不同意变更，可停止使用；继续使用视为接受更新后的条款。我们可在必要时对服务进行暂停或终止，并依法履行告知义务。');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(115:11)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('联系方式');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(121:11)", "entry");
            Text.fontSize(16);
            Text.fontWeight(FontWeight.Bold);
            Text.fontColor('#333333');
            Text.margin({ top: 8, bottom: 4 });
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(126:11)", "entry");
            Column.width('100%');
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('如对本《用户协议》或相关事宜有任何问题，请通过');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(127:13)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('is716652@qq.com');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(132:13)", "entry");
            Text.fontSize(14);
            Text.fontColor('#1E88E5');
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('与我们联系');
            Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(136:13)", "entry");
            Text.fontSize(14);
            Text.fontColor('#333333');
            Text.lineHeight(22);
            Text.textAlign(TextAlign.Start);
        }, Text);
        Text.pop();
        Column.pop();
        Column.pop();
        // 内容区（替换为正式《用户协议》全文）
        Scroll.pop();
        Column.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            If.create();
            if (this.showPrivacy) {
                this.ifElseBranchUpdateFunction(0, () => {
                    this.observeComponentCreation2((elmtId, isInitialRender) => {
                        Column.create();
                        Column.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(155:9)", "entry");
                        Column.width('100%');
                        Column.height('100%');
                        Column.backgroundColor('#FFFFFF');
                    }, Column);
                    this.observeComponentCreation2((elmtId, isInitialRender) => {
                        Row.create();
                        Row.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(156:9)", "entry");
                        Row.width('100%');
                        Row.padding({ left: 8, right: 8, top: 8, bottom: 8 });
                    }, Row);
                    this.observeComponentCreation2((elmtId, isInitialRender) => {
                        Button.createWithLabel('关闭');
                        Button.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(157:11)", "entry");
                        Button.fontSize(14);
                        Button.backgroundColor('#F0F0F0');
                        Button.borderRadius(8);
                        Button.padding({ left: 12, right: 12, top: 6, bottom: 6 });
                        Button.onClick(() => { this.showPrivacy = false; });
                    }, Button);
                    Button.pop();
                    Row.pop();
                    this.observeComponentCreation2((elmtId, isInitialRender) => {
                        Scroll.create();
                        Scroll.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(167:9)", "entry");
                        Scroll.width('100%');
                        Scroll.height('100%');
                        Scroll.backgroundColor('#FFFFFF');
                    }, Scroll);
                    this.observeComponentCreation2((elmtId, isInitialRender) => {
                        Column.create();
                        Column.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(168:11)", "entry");
                        Column.width('100%');
                        Column.padding({ left: 12, right: 12, bottom: 12 });
                    }, Column);
                    this.observeComponentCreation2((elmtId, isInitialRender) => {
                        Text.create('隐私政策');
                        Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(169:13)", "entry");
                        Text.fontSize(18);
                        Text.fontWeight(FontWeight.Bold);
                        Text.margin({ bottom: 8 });
                    }, Text);
                    Text.pop();
                    this.observeComponentCreation2((elmtId, isInitialRender) => {
                        Text.create('请阅读隐私政策。本应用当前版本不收集个人信息。全文请在首页底部链接查看。');
                        Text.debugLine("entry/src/main/ets/pages/Legal/UserAgreement.ets(173:13)", "entry");
                        Text.fontSize(14);
                        Text.lineHeight(22);
                    }, Text);
                    Text.pop();
                    Column.pop();
                    Scroll.pop();
                    Column.pop();
                });
            }
            else {
                this.ifElseBranchUpdateFunction(1, () => {
                });
            }
        }, If);
        If.pop();
        Stack.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "UserAgreementPage";
    }
}
registerNamedRoute(() => new UserAgreementPage(undefined, {}), "", { bundleName: "is716652.mathconcepts.unlocked", moduleName: "entry", pagePath: "pages/Legal/UserAgreement", pageFullPath: "entry/src/main/ets/pages/Legal/UserAgreement", integratedHsp: "false", moduleType: "followWithHap" });
