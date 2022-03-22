package com.oneteam.wo9wo9.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oneteam.wo9wo9.admin.model.dao.AdminDao;
import com.oneteam.wo9wo9.admin.model.vo.PackageAttachment;
import com.oneteam.wo9wo9.admin.model.vo.PackageProduct;
import com.oneteam.wo9wo9.admin.model.vo.SelfAttachment;
import com.oneteam.wo9wo9.admin.model.vo.SelfProduct;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	// 상품 정보 추가 메소드
	@Override
	public int insertSelf(SelfProduct selfProduct) {
		return adminDao.insertSelf(selfProduct);
	}

	// 상품 이미지 추가 메소드
	@Override
	public int insertSelfAtt(SelfAttachment selfAttachment) {
		return adminDao.insertSelfAtt(selfAttachment);
	}

	// 상품 조회 메소드
	@Override
	public List<SelfProduct> selectPList() {
		return adminDao.selectPlist();
	}

	// 상품 활성화 비활성화
	// 활성화
	@Override
	public int activation(int sideNum) {
		return adminDao.activation(sideNum);
	}
	// 비활성화
	@Override
	public int unactivation(int sideNum) {
		return adminDao.unactivation(sideNum);
	}

	// 상품 정보 수정
	@Override
	public int updateSelf(SelfProduct selfProduct) {
		return adminDao.updateSelf(selfProduct);
	}

	// 상품 정보 삭제
	@Override
	public int deleteSelf(int sideNum) {
		return adminDao.deleteSelf(sideNum);
	}

	@Override
	public int deleteSelfAtt(int sideNum) {
		return adminDao.deleteSelfAtt(sideNum);
	}

	// 상품 이미지 가져오기
	@Override
	public SelfProduct selectOriginImg(int sideNum) {
		return adminDao.selectOriginImg(sideNum);
	}

	// 패키지 상품 추가 메소드
	@Override
	public int insertPack(PackageProduct packageProduct) {
		return adminDao.insertPack(packageProduct);
	}

	// 패키지 상품 이미지 추가 메소드
	@Override
	public int insertPackAtt(PackageAttachment packageAttachment) {
		return adminDao.insertPackAtt(packageAttachment);
	}

	
	// 패키지 도시락 조회 메소드
	@Override
	public List<PackageProduct> selectDList() {
		return adminDao.selectDList();
	}

	// 패키지 도시락 수정 메소드
	@Override
	public int updatePack(PackageProduct packageProduct) {
		return adminDao.updatePack(packageProduct);
	}

	// 패키지 도시락 삭제 메소드
	@Override
	public int deletePack(int packageNum) {
		return adminDao.deletePack(packageNum);
	}

	@Override
	public int deletePackAtt(int packageNum) {
		return adminDao.deletePackAtt(packageNum);
	}

	// 패키지 이미지 가져오기 메소드
	@Override
	public PackageProduct selectPackImg(int packageNum) {
		return adminDao.selectPackImg(packageNum);
	}

	// 패키지 상품 활성/비활성화 메소드
	@Override
	public int activationPack(int packageNum) {
		return adminDao.activationPack(packageNum);
	}
	@Override
	public int unactivationPack(int packageNum) {
		return adminDao.unactivationPack(packageNum);
	}

	// 관리자 메인페이지 차트 에 사용되는 메소드
	@Override
	public List<SelfProduct> selectAPList() {
		return adminDao.selectAPList();
	}

	

	


}
