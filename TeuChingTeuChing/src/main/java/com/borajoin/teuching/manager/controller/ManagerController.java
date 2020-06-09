package com.borajoin.teuching.manager.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.borajoin.teuching.manager.model.service.ManagerService;
import com.sun.mail.auth.MD4;

import common.util.File_Upload;

@Controller
public class ManagerController {

	@Autowired
	ManagerService ms;

	/**
	 * @Method Name : managerPage
	 * @작성일 : 2020. 6. 1.
	 * @작성자 : 김지수
	 * @Method 설명 : 관리자 페이지 내 리뷰신고, 트레이너 신고 게시판 구현
	 */
	@RequestMapping("/manager.do")
	public ModelAndView managerPage(Integer revcurrentpage, Integer tracurrentpage) {

		ModelAndView mv = new ModelAndView();
		Map<String, Object> res = new HashMap<String, Object>();

		if (revcurrentpage == null) {
			revcurrentpage = 1;
		}
		if (tracurrentpage == null) {
			tracurrentpage = 1;
		}

		res.put("resRev", ms.selectRevReport(revcurrentpage));
		res.put("resTra", ms.selectTraReport(tracurrentpage));

		mv.addObject("res", res);
		mv.setViewName("manager/manager");

		return mv;
	}

	/**
	 * @Method Name : managerDetail
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 신고 게시글에 대한 상세페이지
	 */
	@RequestMapping("/managerdetail.do")
	public ModelAndView managerDetail(Integer revid, Integer traid) {
		ModelAndView mv = new ModelAndView();
		List<File_Upload> fu = new ArrayList<File_Upload>();
		if (revid == null) {
			mv.addObject("type", "tra");
			mv.addObject("res", ms.traManagerDetail(traid));
			fu = ms.selectTraFile(traid);
		}
		if (traid == null) {
			mv.addObject("type", "rev");
			mv.addObject("res", ms.revManagerDetail(revid));
			fu = ms.selectRevFile(revid);
		}
		mv.addObject("file", fu);
		mv.setViewName("manager/managerDetail");
		return mv;
	}

	/**
	 * @Method Name : managerDetailAnswer
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 신고 게시글에 대한 처리 결과 작성 페이지 매핑
	 */
	@PostMapping("/managerdetail/answer.do")
	public ModelAndView managerDetailAnswer(@RequestParam Map<String, Object> commandMap) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("res", commandMap);
		mv.setViewName("manager/managerAnswer");
		return mv;
	}

	/**
	 * @Method Name : managerDetailModify
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 신고 게시글에 대한 처리 결과 작성 및 수정
	 */
	@PostMapping("/managerdetail/modify.do")
	public ModelAndView managerDetailModify(@RequestParam Map<String, Object> commandMap) {
		ModelAndView mv = new ModelAndView();
		if (commandMap.get("type").equals("tra")) {
			ms.updateManagerDetail_tra(commandMap);
			mv.setViewName("redirect:/managerdetail.do?traid=" + commandMap.get("report_idx"));
		}
		if (commandMap.get("type").equals("rev")) {
			ms.updateManagerDetail_rev(commandMap);
			mv.setViewName("redirect:/managerdetail.do?revid=" + commandMap.get("report_idx"));
		}
		return mv;
	}

	/**
	 * @Method Name : reportView
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너 신고 및 리뷰신고 작성 페이지 매핑
	 */
	@RequestMapping("/report/viewreport.do")
	public ModelAndView reportView(@RequestParam Map<String, Object> commandMap) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("res", commandMap);
		mv.setViewName("manager/writeReport");
		return mv;
	}

	/**
	 * @Method Name : reportFileUpload
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너 신고 및 리뷰신고 작성 & 다중파일 업로드
	 */
	@PostMapping("/report/insertReport")
	public ModelAndView reportFileUpload(@RequestParam Map<String, Object> commandMap, List<MultipartFile> files,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String root = request.getSession().getServletContext().getRealPath("");
		List<File_Upload> fileData = new ArrayList<File_Upload>();
		int[] res = ms.insertReport(commandMap);
		for (MultipartFile mf : files) {
			UUID uuid = UUID.randomUUID();
			if (mf.getSize() > 0) {
				String savepath = root + "/resources/upload/";
				String type = "";
				String origin_filename = mf.getOriginalFilename();

				File_Upload file = new File_Upload();
				if (commandMap.get("type").equals("tra")) {
					file.setTable_idx(res[0]);
					type = "TraReport";
				}
				if (commandMap.get("type").equals("rev")) {
					file.setTable_idx(res[0]);
					type = "RevReport";
				}
				String rename_filename = uuid + "_" + type
						+ origin_filename.substring(origin_filename.lastIndexOf("."));
				savepath += rename_filename;

				file.setOrigin_filename(origin_filename);
				file.setRename_filename(rename_filename);
				file.setSavepath(savepath);
				file.setObj(mf);
				fileData.add(file);
			}
		}
		ms.insertFile(fileData);
		mv.addObject("msg", "신고 완료 되었습니다");
		mv.addObject("url", request.getContextPath() + "/profile/review.do");
		mv.setViewName("common/result");
		return mv;
	}

	/**
	 * @Method Name : selectQuali
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 관리자 페이지의 자격증명 메뉴 구현
	 */
	@RequestMapping("/quali.do")
	public ModelAndView selectQuali(Integer currentpage) {
		ModelAndView mv = new ModelAndView();
		if (currentpage == null) {
			currentpage = 1;
		}
		mv.addObject("res", ms.selectQuali(currentpage));
		mv.setViewName("manager/quali");
		return mv;
	}

	/**
	 * @Method Name : selectQualiDetail
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 자격증명 요청글의 상세 내용 확인
	 */
	@RequestMapping("/qualidetail.do")
	public ModelAndView selectQualiDetail(String qualiidx) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/qualiDetail");
		mv.addObject("res", ms.selectQualiDetail(qualiidx));
		return mv;
	}

	/**
	 * @Method Name : updateQualiYn
	 * @작성일 : 2020. 6. 6.
	 * @작성자 : 김지수
	 * @Method 설명 : 트레이너 인증 요청 승인처리
	 */
	@RequestMapping("/qualidetail/auth.do")
	public ModelAndView updateQualiYn(int quali_idx, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		ms.updateQualiYn(quali_idx);
		mv.addObject("msg", "승인 완료 되었습니다");
		mv.addObject("url", request.getContextPath() + "/quali.do");
		mv.setViewName("common/result");
		return mv;
	}

	@RequestMapping("/quali/requestpage.do")
	public ModelAndView qualiRequest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/qualiRequest");
		return mv;
	}

}
