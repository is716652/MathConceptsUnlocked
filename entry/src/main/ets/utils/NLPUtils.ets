// 自然语言处理工具类（简化版）

// 定义分类接口
interface CategoryInfo {
  name: string;
  keywords: string[];
}

export class NLPUtils {
  // 分词（简单按空格和标点分割）
  static tokenize(text: string): string[] {
    const result: string[] = [];
    const tokens = text.split(/[\s,，。？！?!；;、]+/);
    for (let i = 0; i < tokens.length; i++) {
      if (tokens[i].length > 0) {
        result.push(tokens[i]);
      }
    }
    return result;
  }

  // 提取数学关键词
  static extractMathKeywords(text: string): string[] {
    const mathTerms = [
      // 基础概念
      "导数", "积分", "极限", "微分", "级数", "方程",
      "函数", "连续", "可导", "收敛", "发散",
      
      // 运算符号
      "求导", "积分", "求解", "计算", "证明",
      
      // 具体内容
      "定积分", "不定积分", "偏导数", "全微分",
      "泰勒", "傅里叶", "齐次", "伯努利",
      "可分离", "线性", "常系数",
      
      // 判别法
      "比较", "比值", "根值", "判别法",
      
      // 公式相关
      "公式", "定理", "法则", "性质",
      
      // 几何
      "切线", "法线", "曲率", "面积", "体积",
      
      // 类型
      "齐次", "非齐次", "正项", "交错"
    ];
    
    const tokens = NLPUtils.tokenize(text);
    const keywords: string[] = [];
    
    for (let i = 0; i < tokens.length; i++) {
      for (let j = 0; j < mathTerms.length; j++) {
        if (tokens[i].indexOf(mathTerms[j]) >= 0) {
          keywords.push(mathTerms[j]);
          break;
        }
      }
    }
    return keywords;
  }

  // 识别问题类型
  static detectQuestionType(text: string): string {
    // 概念询问
    if (text.indexOf("什么") >= 0 || 
        text.indexOf("定义") >= 0 ||
        text.indexOf("概念") >= 0 ||
        text.indexOf("意思") >= 0 ||
        text.indexOf("是啥") >= 0) {
      return "concept";
    }
    
    // 方法询问
    if (text.indexOf("怎么") >= 0 || 
        text.indexOf("如何") >= 0 || 
        text.indexOf("怎样") >= 0 ||
        text.indexOf("方法") >= 0) {
      return "method";
    }
    
    // 求解类
    if (text.indexOf("求") >= 0 || 
        text.indexOf("计算") >= 0 ||
        text.indexOf("解") >= 0) {
      return "solve";
    }
    
    // 公式查询
    if (text.indexOf("公式") >= 0 || 
        text.indexOf("等于") >= 0 ||
        text.indexOf("表达式") >= 0) {
      return "formula";
    }
    
    // 例题请求
    if (text.indexOf("例题") >= 0 || 
        text.indexOf("例子") >= 0 ||
        text.indexOf("举例") >= 0 ||
        text.indexOf("示例") >= 0) {
      return "example";
    }
    
    // 练习请求
    if (text.indexOf("练习") >= 0 || 
        text.indexOf("习题") >= 0 ||
        text.indexOf("题目") >= 0 ||
        text.indexOf("做题") >= 0) {
      return "exercise";
    }
    
    // 帮助请求
    if (text.indexOf("帮助") >= 0 || 
        text.indexOf("怎么用") >= 0 ||
        text.indexOf("功能") >= 0) {
      return "help";
    }
    
    // 问候
    if (text.indexOf("你好") >= 0 || 
        text.indexOf("hi") >= 0 ||
        text.indexOf("hello") >= 0 ||
        text.indexOf("嗨") >= 0) {
      return "greeting";
    }
    
    return "general";
  }

  // 提取分类信息
  static extractCategory(text: string): string {
    const categories: CategoryInfo[] = [
      { name: "函数与极限", keywords: ["函数", "极限", "连续", "无穷"] },
      { name: "导数与微分", keywords: ["导数", "微分", "求导", "可导"] },
      { name: "不定积分", keywords: ["不定积分", "原函数", "积分公式"] },
      { name: "定积分", keywords: ["定积分", "面积", "体积", "牛顿"] },
      { name: "级数", keywords: ["级数", "收敛", "发散", "泰勒", "傅里叶"] },
      { name: "微分方程", keywords: ["微分方程", "齐次", "可分离", "特征"] }
    ];
    
    for (let i = 0; i < categories.length; i++) {
      const cat = categories[i];
      for (let j = 0; j < cat.keywords.length; j++) {
        if (text.indexOf(cat.keywords[j]) >= 0) {
          return cat.name;
        }
      }
    }
    
    return "";
  }

  // 计算文本相似度（简单版本）
  static calculateSimilarity(text1: string, text2: string): number {
    const tokens1 = NLPUtils.tokenize(text1.toLowerCase());
    const tokens2 = NLPUtils.tokenize(text2.toLowerCase());
    
    let matchCount = 0;
    for (let i = 0; i < tokens1.length; i++) {
      for (let j = 0; j < tokens2.length; j++) {
        if (tokens1[i] === tokens2[j]) {
          matchCount = matchCount + 1;
          break;
        }
      }
    }
    
    const maxLength = Math.max(tokens1.length, tokens2.length);
    return maxLength > 0 ? matchCount / maxLength : 0;
  }
}
