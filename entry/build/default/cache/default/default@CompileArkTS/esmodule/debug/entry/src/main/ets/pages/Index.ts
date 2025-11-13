if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface Index_Params {
    showPolicyDialog?: boolean;
}
import router from "@ohos:router";
class Index extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.__showPolicyDialog = new ObservedPropertySimplePU(false, this, "showPolicyDialog");
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: Index_Params) {
        if (params.showPolicyDialog !== undefined) {
            this.showPolicyDialog = params.showPolicyDialog;
        }
    }
    updateStateVars(params: Index_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
        this.__showPolicyDialog.purgeDependencyOnElmtId(rmElmtId);
    }
    aboutToBeDeleted() {
        this.__showPolicyDialog.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private __showPolicyDialog: ObservedPropertySimplePU<boolean>;
    get showPolicyDialog() {
        return this.__showPolicyDialog.get();
    }
    set showPolicyDialog(newValue: boolean) {
        this.__showPolicyDialog.set(newValue);
    }
    aboutToAppear() {
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Stack.create();
            Stack.height('100%');
            Stack.width('100%');
        }, Stack);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Image.create({ "id": 16777225, "type": 20000, params: [], "bundleName": "is716652.mathconcepts.unlocked", "moduleName": "entry" });
            Image.width('100%');
            Image.height('100%');
            Image.objectFit(ImageFit.Cover);
            Image.onClick(() => router.pushUrl({ url: 'pages/Catalog/HighMathCatalog' }));
        }, Image);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.width('100%');
            Column.height('100%');
            Column.justifyContent(FlexAlign.End);
            Column.padding({ bottom: 16 });
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.width('100%');
            Row.justifyContent(FlexAlign.Center);
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('隐私政策');
            Button.fontSize(14);
            Button.fontColor('#3F51B5');
            Button.backgroundColor('#F0F0F0');
            Button.borderRadius(8);
            Button.padding({ left: 12, right: 12, top: 6, bottom: 6 });
            Button.onClick(() => router.pushUrl({ url: 'pages/Legal/PrivacyPolicy' }));
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('用户协议');
            Button.margin({ left: 8 });
            Button.fontSize(14);
            Button.fontColor('#3F51B5');
            Button.backgroundColor('#F0F0F0');
            Button.borderRadius(8);
            Button.padding({ left: 12, right: 12, top: 6, bottom: 6 });
            Button.onClick(() => router.pushUrl({ url: 'pages/Legal/UserAgreement' }));
        }, Button);
        Button.pop();
        Row.pop();
        Column.pop();
        Stack.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "Index";
    }
}
registerNamedRoute(() => new Index(undefined, {}), "", { bundleName: "is716652.mathconcepts.unlocked", moduleName: "entry", pagePath: "pages/Index", pageFullPath: "entry/src/main/ets/pages/Index", integratedHsp: "false", moduleType: "followWithHap" });
