package com.bark.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bark.domain.Criteria;
import com.bark.domain.User;

public interface UserMapper {
	@Select("select * from user where type != 3 order by regDate DESC, type")
	public List<User> getUserList();
	@Select("select * from user where id = #{id}")
	public User getUser(String id);
	@Insert("insert into user(id, pwd, name, phone, email, addr, available, type)\r\n"
			+ "	values(#{id}, #{pwd}, #{name}, #{phone}, #{email}, #{addr}, #{available}, #{type})")
	public int insert(User user);
	@Update("update user \r\n"
			+ "	set pwd = #{pwd}, phone = #{phone}, email = #{email}, addr = #{addr}\r\n"
			+ "	where id = #{id}")
	public int update(User user);
	@Delete("delete from user where id=#{id}")
	public int delete(User user);
    @Select("select User from user where email = #{email}")
    public User findUser(String email);
    @Select("select count(id) from user where id = #{id}")
	public int checkId(String id);
    @Select("select count(id) from user where email = #{email}")
	public int checkEmail(String email);
    @Select("select id from user where email = #{email}")
	public String getUserId(String email);
    @Update("update user set pwd = #{pwd} where email = #{email}")
	public int updateUserPwd(@Param("email") String email, @Param("pwd")String pwd);
    
	/*
	 * @Select("select * from user where ${param1} like concat('%',#{param2},'%') and type like concat('%',#{param3},'%') and type !=3 order by type, shelterno"
	 * ) public List<User> getUserType(String filter,String input,int type);
	 */
    
    //user type별 검색
    @Select("select * from user where ${param1} like concat('%',#{param2},'%') and type like concat('%',#{param3},'%') and type !=3 order by regDate DESC")
    public List<User> getUserType(String filter,String input,int type);

    @Select("select * from user where ${param1} like concat('%',#{param2},'%') and type !=3 order by type, regDate DESC")
    public List<User> getSearchUser(String filter,String input);
    //관리자페이지 보호소승인
    @Update("update user set available=#{param1} where id=#{param2}")
	public int availableUpdate(String available,String id);

    @Update("update user "
			+ "	set addr = #{address} "
			+ "	where id = #{id};")
	public int updateAddr(@Param("id") String id, @Param("address") String address);
	
    @Update("update user "
			+ "	set shelterno = #{shelterno} "
			+ "	where id = #{id};")
    public int updateShelterno(@Param("id") String id, @Param("shelterno")Integer shelterno);
    
    @Update("update adoption set state=${param1}, adopt_date=sysdate()  where adoptionno=${param2};")
	public int adoptionState(String state, String adoptionno);

	// dummy 게시판 Data 생성시 필요 ------TEST--------------
	// User 테이블의 회원 Id List 추출 
	@Select("SELECT * FROM user ")
	public List<User> getUserDummy();
	// ------------------------------

	
}