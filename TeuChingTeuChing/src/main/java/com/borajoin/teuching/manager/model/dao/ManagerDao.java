package com.borajoin.teuching.manager.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.manager.model.vo.ReviewReport;
import com.borajoin.teuching.manager.model.vo.TrainerReport;

import common.util.Paging;

@Repository
public class ManagerDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public List<ReviewReport> selectRevReport(Paging pagingRev) {
		return sqlSession.selectList("Manager.selectRevReport", pagingRev);
	}

	public List<TrainerReport> selectTraReport(Paging pagingTra) {
		return sqlSession.selectList("Manager.selectTraReport", pagingTra);
	}

	public int revCnt() {
		return sqlSession.selectOne("Manager.revCnt");
	}

	public int traCnt() {
		return sqlSession.selectOne("Manager.traCnt");
	}

	public TrainerReport traManagerDetail(int traid) {
		return sqlSession.selectOne("Manager.traManagerDetail", traid);
	}

	public ReviewReport revManagerDetail(int revid) {
		return sqlSession.selectOne("Manager.revManagerDetail", revid);
	}

}
