/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.base.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.base.entity.BaseScroll;
import com.thinkgem.jeesite.modules.base.dao.BaseScrollDao;

/**
 * 卷Service
 * @author minghui
 * @version 2018-02-28
 */
@Service
@Transactional(readOnly = true)
public class BaseScrollService extends CrudService<BaseScrollDao, BaseScroll> {

	public BaseScroll get(String id) {
		return super.get(id);
	}
	
	public List<BaseScroll> findList(BaseScroll baseScroll) {
		return super.findList(baseScroll);
	}
	
	public Page<BaseScroll> findPage(Page<BaseScroll> page, BaseScroll baseScroll) {
		return super.findPage(page, baseScroll);
	}
	
	@Transactional(readOnly = false)
	public void save(BaseScroll baseScroll) {
		super.save(baseScroll);
	}
	
	@Transactional(readOnly = false)
	public void delete(BaseScroll baseScroll) {
		super.delete(baseScroll);
	}
	
}