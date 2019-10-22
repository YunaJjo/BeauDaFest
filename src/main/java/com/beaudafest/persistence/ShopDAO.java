package com.beaudafest.persistence;

import java.util.List;

import com.beaudafest.domain.CouponVO;
import com.beaudafest.domain.ShopVO;

public interface ShopDAO {
	public int shopJoin(ShopVO vo);//샵 등록
	public int modifyShopInfo(ShopVO vo); //샵 정보 수정
	public int deleteShop(Integer shopNum); //샵 삭제
	
	public List<ShopVO> findShop(ShopVO vo);//여러 샵 조회
	public ShopVO findShopOne(ShopVO vo);//샵 조회
	public ShopVO findShopInfo(Integer shopNum);//특정 shopInfo 조회
	public List<CouponVO> couponList(Integer shopNum);
}
