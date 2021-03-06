package com.beaudafest.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beaudafest.domain.ReservationTableVO;
import com.beaudafest.domain.ReservationVO;
import com.beaudafest.domain.newReservationTableVO;

@Repository
public class ReservationTableDAOImpl implements ReservationTableDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	
	@Override
	public int selectMonthSchedule(Map map) {
		return sqlsession.selectOne("reservation.selectMonthSchedule",map);
	}
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
	@Override
	public List<newReservationTableVO> event(int shopNum) {
		return sqlsession.selectList("reservation.selectEvent",shopNum);
	}
	@Override
	public int deleteTimeSchedule(Map map) {
		return sqlsession.delete("reservation.deleteTimeSchedule",map);
	}
	@Override
	public int countTimeSchedule(Map map) {
		return sqlsession.selectOne("reservation.countTimeSchedule",map);
	}
	@Override
	public int deleteMonthSchedule(Map map) {
		return sqlsession.selectOne("reservation.deleteMonthSchedule",map);
	}
	@Override
	public List<newReservationTableVO> reservationEvent(Map map) {
		return sqlsession.selectList("reservation.selectReservationSchedule",map);
	}
	@Override
	public int createReservation(ReservationVO vo) {
		return sqlsession.insert("reservation.createReservation",vo);
	}
}
