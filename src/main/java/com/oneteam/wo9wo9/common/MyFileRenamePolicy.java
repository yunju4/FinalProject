package com.oneteam.wo9wo9.common;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyFileRenamePolicy {

	public String rename(String originName) {
		
		// 수정파일명 : 파일이 업로드 된 시간 (년월일시분초) + 5자리 랜덤값 (10000 ~ 99999)
		// => 최대한 이름이 겹치지 않게 하기 위해서
		// 완성된 파일명에 마지막으로 확장자명까지 붙여줘야함
		
		// 1. 파일이 업로드 된 시간 => SimpleDateFormat
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		// 2. 5자기 랜덤값
		int ranNum = (int)(Math.random() * 90000) + 10000;
		
		// 3. 원본 파일의 확장자병
		// => 파일명 중간에 . 이 들어가는 경우를 고려해서
		// 원본 파일명 기준으로 가장 맨 마지막의 .의 인덱스를 기준으로 파일명과 확장자명을 나눈다.
		// indexOf, lastIndexOf
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 1 + 2 + 3
		String changeName = currentTime + ranNum + ext;
		
		return changeName;
	}
	
}
