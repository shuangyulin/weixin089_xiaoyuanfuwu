package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 发布信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-30 14:48:06
 */
@TableName("fabuxinxi")
public class FabuxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public FabuxinxiEntity() {
		
	}
	
	public FabuxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 信息编号
	 */
					
	private String xinxibianhao;
	
	/**
	 * 信息名称
	 */
					
	private String xinximingcheng;
	
	/**
	 * 类型
	 */
					
	private String leixing;
	
	/**
	 * 简介
	 */
					
	private String jianjie;
	
	/**
	 * 信息内容
	 */
					
	private String xinxineirong;
	
	/**
	 * 信息图片
	 */
					
	private String xinxitupian;
	
	/**
	 * 卖家账号
	 */
					
	private String maijiazhanghao;
	
	/**
	 * 卖家姓名
	 */
					
	private String maijiaxingming;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 卖家地址
	 */
					
	private String maijiadizhi;
	
	/**
	 * 用户id
	 */
					
	private Long userid;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：信息编号
	 */
	public void setXinxibianhao(String xinxibianhao) {
		this.xinxibianhao = xinxibianhao;
	}
	/**
	 * 获取：信息编号
	 */
	public String getXinxibianhao() {
		return xinxibianhao;
	}
	/**
	 * 设置：信息名称
	 */
	public void setXinximingcheng(String xinximingcheng) {
		this.xinximingcheng = xinximingcheng;
	}
	/**
	 * 获取：信息名称
	 */
	public String getXinximingcheng() {
		return xinximingcheng;
	}
	/**
	 * 设置：类型
	 */
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	/**
	 * 获取：类型
	 */
	public String getLeixing() {
		return leixing;
	}
	/**
	 * 设置：简介
	 */
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	/**
	 * 获取：简介
	 */
	public String getJianjie() {
		return jianjie;
	}
	/**
	 * 设置：信息内容
	 */
	public void setXinxineirong(String xinxineirong) {
		this.xinxineirong = xinxineirong;
	}
	/**
	 * 获取：信息内容
	 */
	public String getXinxineirong() {
		return xinxineirong;
	}
	/**
	 * 设置：信息图片
	 */
	public void setXinxitupian(String xinxitupian) {
		this.xinxitupian = xinxitupian;
	}
	/**
	 * 获取：信息图片
	 */
	public String getXinxitupian() {
		return xinxitupian;
	}
	/**
	 * 设置：卖家账号
	 */
	public void setMaijiazhanghao(String maijiazhanghao) {
		this.maijiazhanghao = maijiazhanghao;
	}
	/**
	 * 获取：卖家账号
	 */
	public String getMaijiazhanghao() {
		return maijiazhanghao;
	}
	/**
	 * 设置：卖家姓名
	 */
	public void setMaijiaxingming(String maijiaxingming) {
		this.maijiaxingming = maijiaxingming;
	}
	/**
	 * 获取：卖家姓名
	 */
	public String getMaijiaxingming() {
		return maijiaxingming;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：卖家地址
	 */
	public void setMaijiadizhi(String maijiadizhi) {
		this.maijiadizhi = maijiadizhi;
	}
	/**
	 * 获取：卖家地址
	 */
	public String getMaijiadizhi() {
		return maijiadizhi;
	}
	/**
	 * 设置：用户id
	 */
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}

}
