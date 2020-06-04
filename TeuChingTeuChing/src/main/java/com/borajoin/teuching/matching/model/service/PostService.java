package com.borajoin.teuching.matching.model.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.borajoin.teuching.matching.model.dao.PostDao;
import com.borajoin.teuching.matching.model.vo.Post;

import common.util.File_Upload;

@Service
public class PostService {

	@Autowired
	PostDao postDao;

	public Post postDetail(Post data) {
		return postDao.postDetail(data);
	}

	public int insertPost(List<File_Upload> uploads) {
		int res = postDao.insertPost();
		insertFile(uploads);
		return 0;
	}

	public int insertFile(List<File_Upload> uploads) {
		int res = 0;

		for (File_Upload file : uploads) {
			res = postDao.insertFile(file);
			MultipartFile mf = (MultipartFile) file.getObj();
			File f = new File((String) file.getSavepath());
			try {
				mf.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return res;
	}
}
