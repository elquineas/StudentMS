package com.shs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shs.dto.MemberDTO;
import com.shs.mybatis.SqlMapConfig;

public class MemberDAO {
	//MyBatis 세팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	// mapper에 접근하기 위한 Sqlsession
	SqlSession sqlSession;
	
	// Singleton패턴을 활용한 DAO객체 사용
	// : 객체생성은 1회만 동작하고 생성된 객체를 빌려쓰는 형태
	// : +외부에서는 객체생성이 불가능하게 잠금!
	private MemberDAO() {}
	
	// 외부에서 빌려서 사용할 객체 생성(instance)
	private static MemberDAO instance = new MemberDAO();
	//외부에서 getInstance()를 호출하면 객체를 빌려줌
	public static MemberDAO getInstance() {
		return instance;
	}
	int result = 0;
	
	//학생등록
	public int memInsert(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession(true); // 2. commit방법
		
		try {
			result = sqlSession.insert("memInsert", mDto);
			
			if(result > 0) {
				System.out.println("등록 성공");
			} else {
				System.out.println("등록 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
		
		
		//sqlSession.commit(); // 1. commit방법
	}
	
	//출석부 (학생 전체 출력)
	public List<MemberDTO> memSelect() {
		sqlSession = sqlSessionFactory.openSession();
		List<MemberDTO> list = null;
		
		try {
			list = sqlSession.selectList("memSelect");
			
			for(MemberDTO memberDTO : list) {
				System.out.print(memberDTO.getSid() + ",");
				System.out.print(memberDTO.getSname() + ",");
				System.out.print(memberDTO.getSphone() + ",");
				System.out.println();
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	//학생정보 출력(1명) - Update페이지 출력시 사용
	public MemberDTO memInfo(int id) {
		sqlSession = sqlSessionFactory.openSession();
		MemberDTO mDto = null;
		try {
			mDto = sqlSession.selectOne("memInfo", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return mDto;
		
	}
	
	//학생정보 수정
	public int memUpdate(MemberDTO mDto) {
		sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			result = sqlSession.update("memUpdate", mDto);
			if (result > 0) {
				System.out.println("수정성공");
			} else {
				System.out.println("수정실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	public int memDelete(int id) {
		sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			result = sqlSession.delete("memDelete", id);
			if (result > 0) {
				System.out.println("삭제성공");
			} else {
				System.out.println("삭제실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public List<MemberDTO> memSearch(String name) {
		List<MemberDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("memSearch", name);
			for(MemberDTO memberDTO : list) {
				System.out.print(memberDTO.getSid() + ",");
				System.out.print(memberDTO.getSname() + ",");
				System.out.print(memberDTO.getSphone() + ",");
				System.out.println();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
}

