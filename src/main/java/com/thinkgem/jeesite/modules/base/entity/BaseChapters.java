/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.base.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 章节表Entity
 * @author minghui
 * @version 2018-02-28
 */
public class BaseChapters extends DataEntity<BaseChapters> {
	
	private static final long serialVersionUID = 1L;
	private String baseScroll;		// 分卷id
	private String baseNovel;		// 小说id
	private String name;		// 节名
	private String content;		// 内容
	private Integer wordCount;		// 节字数
	private String leaveWord;		// 作者留言
	
	public BaseChapters() {
		super();
	}

	public BaseChapters(String id){
		super(id);
	}

	@Length(min=1, max=64, message="分卷id长度必须介于 1 和 64 之间")
	public String getBaseScroll() {
		return baseScroll;
	}

	public void setBaseScroll(String baseScroll) {
		this.baseScroll = baseScroll;
	}
	
	@Length(min=1, max=64, message="小说id长度必须介于 1 和 64 之间")
	public String getBaseNovel() {
		return baseNovel;
	}

	public void setBaseNovel(String baseNovel) {
		this.baseNovel = baseNovel;
	}
	
	@Length(min=1, max=32, message="节名长度必须介于 1 和 32 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=6000, message="内容长度必须介于 0 和 6000 之间")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public Integer getWordCount() {
		return wordCount;
	}

	public void setWordCount(Integer wordCount) {
		this.wordCount = wordCount;
	}
	
	@Length(min=0, max=1000, message="作者留言长度必须介于 0 和 1000 之间")
	public String getLeaveWord() {
		return leaveWord;
	}

	public void setLeaveWord(String leaveWord) {
		this.leaveWord = leaveWord;
	}
	
}