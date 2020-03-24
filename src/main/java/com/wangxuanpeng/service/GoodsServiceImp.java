package com.wangxuanpeng.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wangxuanpeng.beans.Goods;
import com.wangxuanpeng.beans.T_type;
import com.wangxuanpeng.mapper.GoodsMapper;
@Service
public class GoodsServiceImp implements GoodsService {

	@Resource
	private GoodsMapper goodsMapper;
	
	
	public List<Goods> findGoods(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return goodsMapper.findGoods(map);
	}


	public Goods findOne(Integer gid) {
		// TODO Auto-generated method stub
		return goodsMapper.findOne(gid);
	}


	public List<T_type> findType() {
		// TODO Auto-generated method stub
		return goodsMapper.findType();
	}


	public int add(Goods goods) {
		return goodsMapper.add(goods);
	}


	public int update(Goods goods) {
		return goodsMapper.update(goods);
	}


	public int deleteAll(Map<String, Object> map) {
		return goodsMapper.deleteAll(map);
	}

}
