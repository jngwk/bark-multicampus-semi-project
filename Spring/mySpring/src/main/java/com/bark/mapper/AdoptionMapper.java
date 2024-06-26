package com.bark.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.bark.domain.Adoption;
import com.bark.domain.Criteria;
import com.bark.domain.Dog;
import com.bark.domain.Donate;

@Mapper
public interface AdoptionMapper {	
	
	@Select("SELECT COUNT(1) FROM dog d JOIN shelter s ON d.shelterno = s.shelterno"
			  + " AND ((#{cri.searchField} = 'shelterName' AND s.shelterName LIKE #{cri.searchWordSql}) "
			  + " OR   (#{cri.searchField} = 'shelterAddr' AND s.shelterAddr LIKE #{cri.searchWordSql}) "
			  + " OR   (#{cri.searchField} = 'breed' AND d.breed LIKE #{cri.searchWordSql}) "
			  + " OR   (#{cri.searchField} is null ) OR (#{cri.searchField} = '')) ")
	public int totalPage(@Param("cri") Criteria cri); // 지현님 한테 물어보기
	
	//입양목록 관련
	@Select("select * from dog;")
	public List<Dog> getDogList();
	//입양 검색 목록
	@Select("select d.*, a.uuid, a.filename from dog d join attach a on d.dogno=a.dogno "
			+ " join shelter s on s.shelterno = d.shelterno"
			+ " where ${param1} like concat('%',#{param2},'%');")
	public List<Dog> dogListSearch(String filter, String input);
	
	@Select("select d.dogno, d.gender,d.feature, d.neuter, d.age, d.breed, d.available, s.shelterName, a.imgUrl, a.uuid, a.filename, s.careTel, s.shelterAddr"
			+ "			from dog d"
			+ "				join attach a"
			+ "						on d.dogno = a.dogno"
			+ "					inner join shelter s"
			+ "						on s.shelterno = d.shelterno"
			+ "					where d.dogno = #{dogno};")
	public Dog getDog(int dogno);	//특정 강아지 정보, detail
	
	
	@Select("SELECT ROW_NUMBER() OVER (ORDER BY dogno DESC) AS row_num, d.*, a.imgUrl, a.uuid, a.filename, s.shelterName\r\n"
			+ "			FROM dog d "
			+ "			join attach a "
			+ "				on d.dogno = a.dogno "
			+ "			join shelter s "
			+ "				on d.shelterno = s.shelterno "
			+ " AND ((#{cri.searchField} = 'shelterName' AND s.shelterName LIKE #{cri.searchWordSql}) "
		    + " OR   (#{cri.searchField} = 'shelterAddr' AND s.shelterAddr LIKE #{cri.searchWordSql}) "
		    + " OR   (#{cri.searchField} = 'breed' AND d.breed LIKE #{cri.searchWordSql}) "
		    + " OR   (#{cri.searchField} is null ) OR (#{cri.searchField} = '')) "
			+ "				ORDER BY dogno DESC LIMIT #{cri.pageSql}, #{cri.amount}")
	public List<Dog> searchDogList(@Param("cri") Criteria cri);	//한 페이지당 강아지 리스트
	
	@Select("SELECT ROW_NUMBER() OVER (ORDER BY dogno DESC) AS row_num, d.*, a.imgUrl, a.uuid, s.shelterName, s.shelterno\r\n"
			+ "			FROM dog d "
			+ "			join attach a "
			+ "				on d.dogno = a.dogno "
			+ "			join shelter s "
			+ "				on d.shelterno = s.shelterno where s.shelterno = #{shelterno}"
			+ "				ORDER BY dogno DESC LIMIT #{cri.pageSql}, #{cri.amount}")
	public List<Dog> searchDogListByShelterno(@Param("cri") Criteria cri, @Param("shelterno") Integer shelterno);
	// 입양 상세 -> 입양 신청 등록
	@Insert("INSERT INTO adoption VALUES(null, #{adoption.id}, #{adoption.dogno}, null, now(), #{adoption.state} )")
	public void adoptionWrite(@Param("adoption") Adoption adoption);

	// 입양 상세 -> 입양 신청 등록 (dog 입양 상테 Set)
	@Update("UPDATE dog SET available = #{available} where dogno = #{dogno}")
	public void adoptionUpdateDog(@Param("dogno") Integer dogno, @Param("available") Integer available);
	
	@Select("select shelterno from shelter where shelterName = #{shelterName}")
	public int getShelterno(String shelterName);
	
	//강아지 파일 관련
	@Select("select shelterno from shelter where shelterName = #{shelterName}")
	public int getSehterno(String shelterName);
	
	@Insert("insert into dog(shelterno, name, gender, breed, age, feature, neuter)"
			+ "values(#{shelterno}, #{name}, #{gender}, #{breed}, #{age}, #{feature}, #{neuter}) ")
	public int insert(Dog dog);	//이미지 파일 없는 강아지 
	
	@Insert("insert into dog(shelterno, name, gender, breed, age, feature, neuter)"
	        + "values(#{shelterno}, #{name}, #{gender}, #{breed}, #{age}, #{feature}, #{neuter})")
	@SelectKey(statement = "SELECT LAST_INSERT_ID()", keyProperty = "dogno", before = false, resultType = int.class)
	public void insertSelectKey(Dog dog);	//이미지 파일 있는 강아지 
	
	@Select("SELECT * FROM dog WHERE dogno = #{dogno}")
	public Dog read(int i);
	@Delete("DELETE FROM dog WHERE dogno = #{dogno}")
	public int delete(int i);
	@Update("UPDATE board SET shelterId = #{shelterId}, name = #{name}, gender = #{gender}, breed = #{breed}, age = #{age}, desc = #{desc}, neuter = #{neuter} WHERE dogno = #{dogno}")
	public int update(Dog dog);

	@Insert("")
	public void insertAdoption();
	
	//관리자 입양관리페이지
	@Select("select a.adoptionno no, a.id id, u.name userName, s.shelterName,d.name dogName,a.adopt_date date,a.state\r\n"
		+ "	from adoption a join user u on a.id = u.id\r\n"
		+ "    join dog d on d.dogno = a.dogno\r\n"
		+ "    join shelter s on s.shelterno = d.shelterno order by a.regDate;")
	public List<Adoption> getAdoptionList();
	//관리자 입양관리페이지 페이지
	@Select("SELECT ROW_NUMBER() OVER (ORDER BY a.adoptionno DESC) AS row_num, a.adoptionno no, a.id id, u.name userName, s.shelterName, d.name dogName, a.adopt_date date, a.state\r\n"
			+ "			 from adoption a "
			+ "			join user u "
			+ "				on a.id = u.id"
			+ "			join dog d "
			+ "				on d.dogno = a.dogno"
			+ "			join shelter s "
			+ "				on s.shelterno = d.shelterno "
			+ "			ORDER BY a.adoptionno DESC LIMIT #{cri.pageSql}, #{cri.amount}")
	public List<Adoption> searchAdoptionList(@Param("cri") Criteria cri);	//한 페이지당 입양내역 리스트
	//관리자 입양관리페이지 검색창
	@Select("select a.adoptionno no, a.id id, u.name userName, s.shelterName,d.name dogName,a.adopt_date date,a.state\r\n"
			+ "	from adoption a join user u on a.id = u.id\r\n"
			+ "    join dog d on d.dogno = a.dogno\r\n"
			+ "    join shelter s on s.shelterno = d.shelterno\r\n"
			+ "where ${param1} like concat('%',#{param2},'%')")
	public List<Adoption> getSearchAdoption(String filter,String input);
	//관리자 입양관리페이지 state검색
	@Select("select a.adoptionno,u.id,u.name userName, s.shelterName,d.name dogName,a.adopt_date date,a.state\r\n"
			+ "	from adoption a join user u on u.id=a.id join dog d on d.dogno=a.dogno join shelter s on s.shelterno=d.shelterno"
			+ "	where ${param1} like concat('%',#{param2},'%') and a.state=#{param3};")
	public List<Adoption> getUserState(String filter,String input,int state);
	

	
	
	//회원페이지 입양내역
	@Select("select a.adoptionno, s.shelterName,d.name dogName,a.adopt_date,a.state\r\n"
			+ "	from adoption a join dog d on d.dogno = a.dogno\r\n"
			+ "    join shelter s on s.shelterno = d.shelterno\r\n"
			+ "    where id = #{id}")
	public List<Adoption> userAdoptionList(String id);
	//회원페이지 입양내역 state검색
	@Select("select a.adoptionno, s.shelterName,d.name dogName,a.adopt_date,a.state\r\n"
			+ "	from adoption a join dog d on d.dogno = a.dogno\r\n"
			+ "    join shelter s on s.shelterno = d.shelterno\r\n"
			+ "    where id = #{param1} and state = ${param2}")
	public List<Adoption> getAState(String id,int state);

	//보호소페이지 입양내역
	@Select("select a.adoptionno, a.id id, u.name userName,d.name dogName,a.adopt_date,a.state\r\n"
			+ "	from adoption a join user u on a.id = u.id\r\n"
			+ "	    join dog d on d.dogno = a.dogno\r\n"
			+ "	    join shelter s on s.shelterno = d.shelterno where s.sheltername = (select name from user where id=#{id})"
			+ "		order by a.state desc")
	public List<Adoption> shelterAdoptionList(String id);



	
	
	
}
