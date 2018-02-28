/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.base.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.base.entity.BaseScroll;
import com.thinkgem.jeesite.modules.base.service.BaseScrollService;

/**
 * 卷Controller
 * @author minghui
 * @version 2018-02-28
 */
@Controller
@RequestMapping(value = "${adminPath}/base/baseScroll")
public class BaseScrollController extends BaseController {

	@Autowired
	private BaseScrollService baseScrollService;
	
	@ModelAttribute
	public BaseScroll get(@RequestParam(required=false) String id) {
		BaseScroll entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = baseScrollService.get(id);
		}
		if (entity == null){
			entity = new BaseScroll();
		}
		return entity;
	}
	
	@RequiresPermissions("base:baseScroll:view")
	@RequestMapping(value = {"list", ""})
	public String list(BaseScroll baseScroll, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<BaseScroll> page = baseScrollService.findPage(new Page<BaseScroll>(request, response), baseScroll); 
		model.addAttribute("page", page);
		return "modules/base/baseScrollList";
	}

	@RequiresPermissions("base:baseScroll:view")
	@RequestMapping(value = "form")
	public String form(BaseScroll baseScroll, Model model) {
		model.addAttribute("baseScroll", baseScroll);
		return "modules/base/baseScrollForm";
	}

	@RequiresPermissions("base:baseScroll:edit")
	@RequestMapping(value = "save")
	public String save(BaseScroll baseScroll, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, baseScroll)){
			return form(baseScroll, model);
		}
		baseScrollService.save(baseScroll);
		addMessage(redirectAttributes, "保存卷成功");
		return "redirect:"+Global.getAdminPath()+"/base/baseScroll/?repage";
	}
	
	@RequiresPermissions("base:baseScroll:edit")
	@RequestMapping(value = "delete")
	public String delete(BaseScroll baseScroll, RedirectAttributes redirectAttributes) {
		baseScrollService.delete(baseScroll);
		addMessage(redirectAttributes, "删除卷成功");
		return "redirect:"+Global.getAdminPath()+"/base/baseScroll/?repage";
	}

}