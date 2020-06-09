package com.borajoin.teuching.manager.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borajoin.teuching.manager.model.vo.Quali;
import com.borajoin.teuching.manager.model.vo.ReviewReport;
import com.borajoin.teuching.manager.model.vo.TrainerReport;

import common.util.File_Upload;
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

	public int updateManagerDetail_tra(Map<String, Object> commandMap) {
		return sqlSession.update("Manager.updateManagerDetail_tra", commandMap);
	}

	public int updateManagerDetail_rev(Map<String, Object> commandMap) {
		return sqlSession.update("Manager.updateManagerDetail_rev", commandMap);
	}

	public int insertReportTra(Map<String, Object> commandMap) {
		return sqlSession.insert("Manager.insertReportTra", commandMap);
	}

	public int insertReportRev(Map<String, Object> commandMap) {
		return sqlSession.insert("Manager.insertReportRev", commandMap);
	}

	public int selectTraReportIdx() {
		return sqlSession.selectOne("Manager.selectTraReportIdx");
	}

	public int selectRevReportIdx() {
		return sqlSession.selectOne("Manager.selectRevReportIdx");
	}

	public int insertFile(File_Upload file) {
		return sqlSession.insert("File.report_insertFile", file);
	}

	public List<File_Upload> selectTraFile(int table_idx) {
		return sqlSession.selectList("Manager.selectTraFile", table_idx);
	}

	public List<File_Upload> selectRevFile(int table_idx) {
		return sqlSession.selectList("Manager.selectRevFile", table_idx);
	}

	public List<Quali> selectQuali(Paging paging) {
		return sqlSession.selectList("Manager.selectQuali", paging);
	}

	public int qualiAllCnt() {
		return sqlSession.selectOne("Manager.qualiAllCnt");
	}
	
	public Quali selectQualiDetail(String qualiidx) {
		return sqlSession.selectOne("Manager.selectQualiDetail", qualiidx);
	}
	
	public int updateQualiYn(int quali_idx) {
		return sqlSession.update("Manager.updateQualiYn", quali_idx);
	}

}
