// 悠悠智能助手服务
import { knowledgeBase, KnowledgeItem, quickReplies } from '../data/KnowledgeBase';
import { NLPUtils } from '../utils/NLPUtils';

export interface SearchResult {
  item: KnowledgeItem;
  score: number;
}

export class YouyouService {
  // 搜索知识库
  static search(query: string): SearchResult[] {
    const keywords = NLPUtils.extractMathKeywords(query);
    const category = NLPUtils.extractCategory(query);
    const results: SearchResult[] = [];
    
    for (let i = 0; i < knowledgeBase.length; i++) {
      const item = knowledgeBase[i];
      let score = 0;
      
      // 标题匹配（权重最高）
      for (let j = 0; j < keywords.length; j++) {
        if (item.title.indexOf(keywords[j]) >= 0) {
          score = score + 20;
        }
      }
      
      // 关键词匹配
      for (let j = 0; j < keywords.length; j++) {
        for (let k = 0; k < item.keywords.length; k++) {
          if (item.keywords[k].indexOf(keywords[j]) >= 0 ||
              keywords[j].indexOf(item.keywords[k]) >= 0) {
            score = score + 10;
          }
        }
      }
      
      // 分类匹配
      if (category.length > 0 && item.category === category) {
        score = score + 15;
      }
      
      // 内容匹配（权重较低）
      for (let j = 0; j < keywords.length; j++) {
        if (item.content.indexOf(keywords[j]) >= 0) {
          score = score + 5;
        }
      }
      
      if (score > 0) {
        results.push({ item: item, score: score });
      }
    }
    
    // 按分数降序排序
    results.sort((a: SearchResult, b: SearchResult) => b.score - a.score);
    return results;
  }

  // 生成智能回答
  static generateAnswer(query: string): string {
    const questionType = NLPUtils.detectQuestionType(query);
    
    // 处理问候
    if (questionType === "greeting") {
      return quickReplies.greeting;
    }
    
    // 处理帮助请求
    if (questionType === "help") {
      const helpItem = knowledgeBase.find(item => item.id === "quick_help");
      return helpItem ? helpItem.content : quickReplies.greeting;
    }
    
    // 搜索知识库
    const results = YouyouService.search(query);
    
    if (results.length === 0) {
      return quickReplies.notFound;
    }
    
    const topResult = results[0].item;
    let answer = "";
    
    // 根据问题类型生成不同回答
    if (questionType === "concept") {
      answer = `📖 **${topResult.title}**\n\n${topResult.content}`;
      
    } else if (questionType === "formula") {
      answer = `📐 **${topResult.title}**\n\n${topResult.content}`;
      
    } else if (questionType === "example") {
      answer = `📝 **${topResult.title}** 的例题：\n\n`;
      if (topResult.examples.length > 0) {
        for (let i = 0; i < topResult.examples.length && i < 3; i++) {
          answer = answer + `${i + 1}. ${topResult.examples[i]}\n\n`;
        }
      } else {
        answer = answer + "该知识点暂无例题，你可以查看其他相关内容。";
      }
      
    } else if (questionType === "exercise") {
      answer = `🎯 **${topResult.title}** 的练习题：\n\n`;
      if (topResult.exercises.length > 0) {
        for (let i = 0; i < topResult.exercises.length && i < 3; i++) {
          answer = answer + `${i + 1}. ${topResult.exercises[i]}\n\n`;
        }
      } else {
        answer = answer + "该知识点暂无练习题，你可以先学习概念。";
      }
      
    } else if (questionType === "method" || questionType === "solve") {
      answer = `💡 **${topResult.title}**\n\n${topResult.content}`;
      
    } else {
      // 通用回答
      answer = `关于 **${topResult.title}**：\n\n${topResult.content}`;
    }
    
    // 添加查看详情链接（如果有页面）
    if (topResult.routePage.length > 0) {
      answer = answer + `\n\n📚 查看详细内容 → ${topResult.title}`;
    }
    
    // 添加相关推荐
    if (topResult.relatedIds.length > 0) {
      answer = answer + "\n\n💡 **相关知识点**：";
      for (let i = 0; i < topResult.relatedIds.length && i < 3; i++) {
        const relatedItem = knowledgeBase.find(item => item.id === topResult.relatedIds[i]);
        if (relatedItem) {
          answer = answer + `\n• ${relatedItem.title}`;
        }
      }
    }
    
    // 如果有多个相关结果，提示用户
    if (results.length > 1) {
      answer = answer + `\n\n🔍 还找到 ${results.length - 1} 个相关内容，需要了解吗？`;
    }
    
    return answer;
  }

  // 获取推荐问题
  static getRecommendedQuestions(category: string): string[] {
    const questions: string[] = [];
    
    if (category === "函数与极限") {
      questions.push("什么是极限");
      questions.push("函数连续性的定义");
      questions.push("重要极限有哪些");
    } else if (category === "导数与微分") {
      questions.push("导数的概念是什么");
      questions.push("基本求导公式");
      questions.push("链式法则怎么用");
    } else if (category === "积分") {
      questions.push("不定积分的概念");
      questions.push("积分公式有哪些");
      questions.push("换元法怎么用");
    } else if (category === "微分方程") {
      questions.push("什么是微分方程");
      questions.push("可分离变量方程");
      questions.push("一阶线性方程怎么解");
    } else {
      questions.push("导数是什么");
      questions.push("给我一些积分例题");
      questions.push("微分方程的类型");
    }
    
    return questions;
  }

  // 获取学习路径建议
  static getLearningPath(currentTopic: string): string[] {
    const paths: string[] = [];
    
    // 根据当前主题推荐学习路径
    const topicMap: Record<string, string[]> = {
      "极限": ["函数的概念", "极限的概念", "连续性", "导数的概念"],
      "导数": ["导数的概念", "基本求导公式", "复合函数求导", "隐函数求导"],
      "积分": ["不定积分", "基本积分公式", "换元法", "分部积分法", "定积分"],
      "级数": ["级数的概念", "正项级数", "交错级数", "幂级数", "泰勒级数"],
      "微分方程": ["微分方程概念", "可分离变量", "一阶线性", "常系数线性"]
    };
    
    // 使用Object.keys替代for..in
    const keys = Object.keys(topicMap);
    for (let i = 0; i < keys.length; i++) {
      const key = keys[i];
      if (currentTopic.indexOf(key) >= 0) {
        const value = topicMap[key];
        if (value) {
          return value;
        }
      }
    }
    
    return ["函数与极限", "导数与微分", "不定积分", "定积分"];
  }
}
