package com.kh.jsp.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyRenamePolicy implements FileRenamePolicy {

	@Override
	public File rename(File oldFile) {
		// 파일 이름을 받아와 새로운 이름의 파일로 바꿔주는 메소드 
		// test.jpg --> 20201023_122501_0000.jpg 
		
		long currentTime = System.currentTimeMillis();
		
		// 시간 형식 표현 20201023_121230
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");

		int randomNumber = (int)(Math.random() * 10000);
		
		String name = oldFile.getName();
		String body = "";  // 파일 명
		String ext = "";    // 확장자
		
		int dot = name.lastIndexOf('.'); 
		
		if( dot != -1) {
			
			body = name.substring(0, dot);
			ext = name.substring(dot);
		} else {
			body = name;
		}
		
		
		String filename = sdf.format(new Date(currentTime))
				                 + "_" + randomNumber + ext;
		
		File newFile = new File(oldFile.getParentFile(), filename);
		
		
		return newFile;
	}

}
