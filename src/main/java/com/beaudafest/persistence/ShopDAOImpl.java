package com.beaudafest.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beaudafest.domain.ShopVO;

@Repository
public class ShopDAOImpl implements ShopDAO{
	
	@Autowired
	private SqlSession sqlSession;

	//샵 등록
	@Override
	public int shopJoin(ShopVO vo) {
		return sqlSession.insert("shop.shopJoin", vo);
	}

	//샵 정보 수정
	@Override
	public int modifyShopInfo(ShopVO vo) {
		return sqlSession.update("shop.modifyShopInfo", vo);
	}
	
	//샵 삭제
	@Override
	public int deleteShop(Integer shopNum) {
		return sqlSession.delete("shop.deleteShop", shopNum);
	}

	//샵 조회
	@Override
	public List<ShopVO> findShop(ShopVO vo) {
		return sqlSession.selectList("shop.findShop", vo);
	}
	
	//샵 조회
	@Override
	public ShopVO findShopOne(ShopVO vo) {
		return sqlSession.selectOne("shop.findShop", vo);
	}

}
