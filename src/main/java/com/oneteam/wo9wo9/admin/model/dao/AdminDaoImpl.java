package com.oneteam.wo9wo9.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oneteam.wo9wo9.admin.model.vo.PackageAttachment;
import com.oneteam.wo9wo9.admin.model.vo.PackageProduct;
import com.oneteam.wo9wo9.admin.model.vo.SelfAttachment;
import com.oneteam.wo9wo9.admin.model.vo.SelfProduct;

@Repository
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private SqlSession sqlSession;
	
	// 상품 정보 추가 메소드
	@Override
	public int insertSelf(SelfProduct selfProduct) {
		return sqlSession.insert("admin.insertSelf", selfProduct);
	}

	// 상품 이미지 추가 메소드
	@Override
	public int insertSelfAtt(SelfAttachment selfAttachment) {
		return sqlSession.insert("admin.insertSelfAtt", selfAttachment);
	}

	// 상품조회 메소드
	@Override
	public List<SelfProduct> selectPlist() {
		return sqlSession.selectList("admin.selectPList");
	}

	// 상품 활성화 비활성화
	// 활성화
	@Override
	public int activation(int sideNum) {
		return sqlSession.update("admin.activation", sideNum);
	}
	// 비활성화
	@Override
	public int unactivation(int sideNum) {
		return sqlSession.update("admin.unactivation", sideNum);
	}

	// 상품 정보 수정
	@Override
	public int updateSelf(SelfProduct selfProduct) {
		return sqlSession.update("admin.updateSelf", selfProduct);
	}

	// 상품 정보 삭제
	@Override
	public int deleteSelf(int sideNum) {
		return sqlSession.delete("admin.deleteSelf", sideNum);
	}

	@Override
	public int deleteSelfAtt(int sideNum) {
		return sqlSession.delete("admin.deleteSelfAtt", sideNum);
	}

	// 상품 이미지 가져오기
	@Override
	public SelfProduct selectOriginImg(int sideNum) {
		return sqlSession.selectOne("admin.selectOriginImg", sideNum);
	}
	
	
	

	// 패키지 상품 추가 메소드
	@Override
	public int insertPack(PackageProduct packageProduct) {
		return sqlSession.insert("admin.insertPack", packageProduct);
	}

	@Override
	public int insertPackAtt(PackageAttachment packageAttachment) {
		return sqlSession.insert("admin.insertPackAtt", packageAttachment);
	}

	// 패키지 도시락 조회 메소드
	@Override
	public List<PackageProduct> selectDList() {
		return sqlSession.selectList("admin.selectDList");
	}

	// 패키지 도시락 수정 메소드
	@Override
	public int updatePack(PackageProduct packageProduct) {
		return sqlSession.update("admin.updatePack", packageProduct);
	}

	// 패키지 도시락 삭제 메소드
	@Override
	public int deletePack(int packageNum) {
		return sqlSession.delete("admin.deletePack", packageNum);
	}

	@Override
	public int deletePackAtt(int packageNum) {
		return sqlSession.delete("admin.deletePackAtt", packageNum);
	}

	// 패키지 이미지 가져오기 메소드
	@Override
	public PackageProduct selectPackImg(int packageNum) {
		return sqlSession.selectOne("admin.selectPackImg", packageNum);
	}

	// 패키지 상품 활성/비활성화 메소드
	@Override
	public int activationPack(int packageNum) {
		return sqlSession.update("admin.activationPack", packageNum);
	}
	@Override
	public int unactivationPack(int packageNum) {
		return sqlSession.update("admin.unactivationPack", packageNum);
	}

	// 관리자 메인페이지 차트 에 사용되는 메소드
	@Override
	public List<SelfProduct> selectAPList() {
		return sqlSession.selectList("admin.selectAPList()");
	}

	
	
	
}
