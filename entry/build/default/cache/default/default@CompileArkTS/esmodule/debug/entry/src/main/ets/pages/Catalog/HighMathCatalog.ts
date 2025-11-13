if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface HighMathCatalog_Params {
}
import router from "@ohos:router";
class HighMathCatalog extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: HighMathCatalog_Params) {
    }
    updateStateVars(params: HighMathCatalog_Params) {
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
            Row.create();
            Row.width('100%');
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
            Text.create('高等数学');
            Text.layoutWeight(1);
            Text.fontSize(18);
            Text.fontWeight(FontWeight.Bold);
            Text.textAlign(TextAlign.Center);
        }, Text);
        Text.pop();
        Row.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Scroll.create();
            Scroll.layoutWeight(1);
            Scroll.scrollBar(BarState.On);
            Scroll.edgeEffect(EdgeEffect.Spring);
        }, Scroll);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.width('100%');
            Column.padding(12);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.width('100%');
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('函数与极限');
            Button.layoutWeight(1);
            Button.fontSize(16);
            Button.borderRadius(12);
            Button.backgroundColor('#E3F2FD');
            Button.padding(16);
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('导数与微分');
            Button.layoutWeight(1);
            Button.margin({ left: 8 });
            Button.fontSize(16);
            Button.borderRadius(12);
            Button.backgroundColor('#E8F5E9');
            Button.padding(16);
        }, Button);
        Button.pop();
        Row.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.width('100%');
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('不定积分');
            Button.layoutWeight(1);
            Button.fontSize(16);
            Button.borderRadius(12);
            Button.backgroundColor('#FFF3E0');
            Button.padding(16);
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('定积分');
            Button.layoutWeight(1);
            Button.margin({ left: 8 });
            Button.fontSize(16);
            Button.borderRadius(12);
            Button.backgroundColor('#F3E5F5');
            Button.padding(16);
        }, Button);
        Button.pop();
        Row.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.width('100%');
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('级数');
            Button.layoutWeight(1);
            Button.fontSize(16);
            Button.borderRadius(12);
            Button.backgroundColor('#FCE4EC');
            Button.padding(16);
        }, Button);
        Button.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Button.createWithLabel('微分方程');
            Button.layoutWeight(1);
            Button.margin({ left: 8 });
            Button.fontSize(16);
            Button.borderRadius(12);
            Button.backgroundColor('#EDE7F6');
            Button.padding(16);
        }, Button);
        Button.pop();
        Row.pop();
        Column.pop();
        Scroll.pop();
        Column.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "HighMathCatalog";
    }
}
registerNamedRoute(() => new HighMathCatalog(undefined, {}), "", { bundleName: "is716652.mathconcepts.unlocked", moduleName: "entry", pagePath: "pages/Catalog/HighMathCatalog", pageFullPath: "entry/src/main/ets/pages/Catalog/HighMathCatalog", integratedHsp: "false", moduleType: "followWithHap" });
