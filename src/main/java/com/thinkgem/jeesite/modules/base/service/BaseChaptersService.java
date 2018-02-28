/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.base.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.base.entity.BaseChapters;
import com.thinkgem.jeesite.modules.base.dao.BaseChaptersDao;

/**
 * 章节表Service
 * @author minghui
 * @version 2018-02-28
 */
@Service
@Transactional(readOnly = true)
public class BaseChaptersService extends CrudService<BaseChaptersDao, BaseChapters> {

	public BaseChapters get(String id) {
		return super.get(id);
	}
	
	public List<BaseChapters> findList(BaseChapters baseChapters) {
		return super.findList(baseChapters);
	}
	
	public Page<BaseChapters> findPage(Page<BaseChapters> page, BaseChapters baseChapters) {
		return super.findPage(page, baseChapters);
	}
	
	@Transactional(readOnly = false)
	public void save(BaseChapters baseChapters) {
		super.save(baseChapters);
	}
	
	@Transactional(readOnly = false)
	public void delete(BaseChapters baseChapters) {
		super.delete(baseChapters);
	}
	
}