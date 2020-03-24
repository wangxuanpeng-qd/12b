package com.wangxuanpeng.service;

import java.util.List;
import java.util.Map;

import com.wangxuanpeng.beans.Goods;
import com.wangxuanpeng.beans.T_type;

public interface GoodsService {

	public List<Goods> findGoods(Map<String, Object> map);

	// 查询一条
	public Goods findOne(Integer gid);

	// 查询分类
	public List<T_type> findType();

	// 添加
	public int add(Goods goods);

	// 修改
	public int update(Goods goods);

	// 删除
	public int deleteAll(Map<String, Object> map);
}
