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
import com.thinkgem.jeesite.modules.base.entity.BaseChapters;
import com.thinkgem.jeesite.modules.base.service.BaseChaptersService;

/**
 * 章节表Controller
 * @author minghui
 * @version 2018-02-28
 */
@Controller
@RequestMapping(value = "${adminPath}/base/baseChapters")
public class BaseChaptersController extends BaseController {

	@Autowired
	private BaseChaptersService baseChaptersService;
	
	@ModelAttribute
	public BaseChapters get(@RequestParam(required=false) String id) {
		BaseChapters entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = baseChaptersService.get(id);
		}
		if (entity == null){
			entity = new BaseChapters();
		}
		return entity;
	}
	
	@RequiresPermissions("base:baseChapters:view")
	@RequestMapping(value = {"list", ""})
	public String list(BaseChapters baseChapters, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<BaseChapters> page = baseChaptersService.findPage(new Page<BaseChapters>(request, response), baseChapters); 
		model.addAttribute("page", page);
		return "modules/base/baseChaptersList";
	}

	@RequiresPermissions("base:baseChapters:view")
	@RequestMapping(value = "form")
	public String form(BaseChapters baseChapters, Model model) {
		model.addAttribute("baseChapters", baseChapters);
		return "modules/base/baseChaptersForm";
	}

	@RequiresPermissions("base:baseChapters:edit")
	@RequestMapping(value = "save")
	public String save(BaseChapters baseChapters, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, baseChapters)){
			return form(baseChapters, model);
		}
		baseChaptersService.save(baseChapters);
		addMessage(redirectAttributes, "保存章节表成功");
		return "redirect:"+Global.getAdminPath()+"/base/baseChapters/?repage";
	}
	
	@RequiresPermissions("base:baseChapters:edit")
	@RequestMapping(value = "delete")
	public String delete(BaseChapters baseChapters, RedirectAttributes redirectAttributes) {
		baseChaptersService.delete(baseChapters);
		addMessage(redirectAttributes, "删除章节表成功");
		return "redirect:"+Global.getAdminPath()+"/base/baseChapters/?repage";
	}

}