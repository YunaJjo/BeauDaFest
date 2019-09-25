package com.beaudafest.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beaudafest.domain.ReservationTableVO;

@Repository
public class ReservationTableDAOImpl implements ReservationTableDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public int insertTimeSchedule(Map map) {
		return sqlsession.insert("reservation.insertTimeSchedule",map);
	}
	
	@Override
	public int insertWeekSchedule(Map map) {
		return sqlsession.insert("reservation.insertWeekSchedule",map);
	}

	@Override
	public List<ReservationTableVO> selectWeekScheduleList(Map map) {
		return sqlsession.selectList("reservation.selectWeekScheduleList", map);
	}
}