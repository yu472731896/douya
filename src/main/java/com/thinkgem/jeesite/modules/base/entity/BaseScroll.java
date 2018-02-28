/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.base.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 卷Entity
 * @author minghui
 * @version 2018-02-28
 */
public class BaseScroll extends DataEntity<BaseScroll> {
	
	private static final long serialVersionUID = 1L;
	private String baseNovel;		// 小说id
	private String name;		// 卷名
	private String synopsis;		// 简介
	
	public BaseScroll() {
		super();
	}

	public BaseScroll(String id){
		super(id);
	}

	@Length(min=1, max=64, message="小说id长度必须介于 1 和 64 之间")
	public String getBaseNovel() {
		return baseNovel;
	}

	public void setBaseNovel(String baseNovel) {
		this.baseNovel = baseNovel;
	}
	
	@Length(min=1, max=32, message="卷名长度必须介于 1 和 32 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=2000, message="简介长度必须介于 0 和 2000 之间")
	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	
}