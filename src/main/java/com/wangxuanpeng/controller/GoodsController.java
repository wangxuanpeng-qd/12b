package com.wangxuanpeng.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangxuanpeng.beans.Goods;
import com.wangxuanpeng.beans.T_type;
import com.wangxuanpeng.service.GoodsService;

@Controller
public class GoodsController {

	@Resource
	private GoodsService goodsService;

	// 查询 分页 模糊查询
	@RequestMapping("find")
	public String find(Model model, @RequestParam(defaultValue = "1") Integer pageNum, String gname) {
		// 初始化分页
		PageHelper.startPage(pageNum, 2);

		Map<String, Object> map = new HashMap<String, Object>();
		map.putIfAbsent("gname", gname);

		List<Goods> list = goodsService.findGoods(map);

		PageInfo<Goods> page = new PageInfo<Goods>(list);

		model.addAttribute("page", page);

		return "find";

	}

	// 详情

	@RequestMapping("findOne")
	public String findOne(Integer gid, Model model) {

		Goods goods = goodsService.findOne(gid);

		model.addAttribute("goods", goods);

		return "findOne";
	}

	// 查询 分类
	@RequestMapping("toadd")
	public String toadd(Model model) {

		List<T_type> type = goodsService.findType();

		model.addAttribute("type", type);

		return "add";
	}

	// 添加
	@RequestMapping("add")
	@ResponseBody
	public boolean add(Goods goods) {

		
			System.out.println(goods);
			
			int i = goodsService.add(goods);
			System.out.println(i);
			if(i>0){
				return true;
			}else{
				return false;
			}

			
		
			
		

	}

	// 回显
	@RequestMapping("toupate")
	public String toupdate(Integer gid, Model model) {

		List<T_type> type = goodsService.findType();

		model.addAttribute("type", type);

		Goods goods = goodsService.findOne(gid);

		model.addAttribute("goods", goods);

		
		return "update";
	}
	// 修改
	@RequestMapping("update")
	@ResponseBody
	
	public boolean update(Goods goods){
		
		
			int i = goodsService.update(goods);
			
			if(i>0){
				return true;
			}
			
			
		return false;
		
	}
	
	// 删除
	@RequestMapping("deleteAll")
	@ResponseBody
	
	public boolean deleteAll(int[] ids){
		
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.putIfAbsent("ids", ids);
			int i = goodsService.deleteAll(map);
			System.out.println(i);
			if(i>0){
				return true;
			}else{
				return false;
			}
			
			
			
		}
		
		
	
	
}
