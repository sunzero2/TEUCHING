package com.borajoin.teuching.manager.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.manager.model.vo.ReviewReport;
import com.borajoin.teuching.manager.model.vo.TrainerReport;

@Repository
public class ManagerDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public List<ReviewReport> selectRevReport() {
		return sqlSession.selectList("Manager.selectRevReport");
	}
	
	public List<TrainerReport> selectTraReport(){
		return sqlSession.selectList("Manager.selectTraReport");
	}

}
