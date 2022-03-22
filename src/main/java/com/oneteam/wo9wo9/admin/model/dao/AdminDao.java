package com.oneteam.wo9wo9.admin.model.dao;

import java.util.List;

//import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.admin.model.vo.PackageAttachment;
import com.oneteam.wo9wo9.admin.model.vo.PackageProduct;
import com.oneteam.wo9wo9.admin.model.vo.SelfAttachment;
import com.oneteam.wo9wo9.admin.model.vo.SelfProduct;
public interface AdminDao {

	// 상품 정보 추가 메소드
	int insertSelf(SelfProduct selfProduct);

	// 상품 이미지 추가 메소드
	int insertSelfAtt(SelfAttachment selfAttachment);

	// 상품 조회 메소드
	List<SelfProduct> selectPlist();

	// 상품 활성화 비활성화
	// 활성화
	int activation(int sideNum);
	// 비활성화
	int unactivation(int sideNum);

	
	// 상품 정보 수정
	int updateSelf(SelfProduct selfProduct);

	// 상품 정보 삭제
	int deleteSelf(int sideNum);

	int deleteSelfAtt(int sideNum);

	// 상품 이미지 가져오기
	SelfProduct selectOriginImg(int sideNum);

	// 패키지 상품 추가 메소드
	int insertPack(PackageProduct packageProduct);

	// 패키지 상품 이미지 추가 메소드
	int insertPackAtt(PackageAttachment packageAttachment);

	// 패키지 도시락 조회 메소드
	List<PackageProduct> selectDList();

	int updatePack(PackageProduct packageProduct);

	// 패키지 도시락 삭제 메소드
	int deletePack(int packageNum);

	int deletePackAtt(int packageNum);

	// 패키지 이미지 가져오기 메소드
	PackageProduct selectPackImg(int packageNum);

	// 패키지 상품 활성/비활성화 메소드
	int activationPack(int packageNum);
	int unactivationPack(int packageNum);

	// 관리자 메인페이지 차트 에 사용되는 메소드
	List<SelfProduct> selectAPList();

	

}
