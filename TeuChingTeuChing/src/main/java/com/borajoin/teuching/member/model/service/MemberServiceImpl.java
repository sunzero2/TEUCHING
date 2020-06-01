package com.borajoin.teuching.member.model.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.borajoin.teuching.member.model.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao md;
	
	@Override
	public int insertFile(List<Map<String, Object>> fileData) {

		int res = 0;
		
		for(Map<String,Object> file : fileData) {
			
			md.insertFile(file);
			
			MultipartFile mf = (MultipartFile) file.get("file");
			File f = new File((String)file.get("savePath"));
			
			
			try {
				
				mf.transferTo(f);
				
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		
		return res;
	}
	
	
	
	
	
}
