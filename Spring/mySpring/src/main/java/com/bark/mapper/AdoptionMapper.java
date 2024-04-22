package com.bark.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.bark.domain.Criteria;
import com.bark.domain.Dog;

@Mapper
public interface AdoptionMapper {
	@Select("select d.dogno, d.breed, d.name, s.shelterName, a.imgUrl "
			+ "from dog d "
			+ "	join attach a "
			+ "		on d.dogno = a.dog_dogno"
			+ "	inner join shelter s"
			+ "		on s.shelterno = d.shelter_shelterno;")
	public List<Dog> getDogList();
	
	@Select("select d.dogno, d.gender, d.age, d.breed, s.shelterName, a.imgUrl \r\n"
			+ "	from dog d"
			+ "		join attach a"
			+ "			on d.dogno = a.dog_dogno"
			+ "		inner join shelter s"
			+ "			on s.shelterno = d.shelter_shelterno"
			+ "		where dogno = #{dogno};")
	public Dog getDog(int dogno);
		
	@Select("SELECT ROW_NUMBER() OVER (ORDER BY dogno DESC) AS row_num, d.*, a.imgUrl "
			+ "FROM dog d "
			+ "	join attach a "
			+ "		on d.dogno = a.dog_dogno "
			+ "ORDER BY dogno DESC "
			+ "LIMIT #{cri.pageSql}, #{cri.amount}")
	public List<Dog> searchList(@Param("cri") Criteria cri);
	
	@Insert("insert into dog(shelterId, name, gender, breed, age, feature, neuter)"
			+ "values(#{shelterId}, #{name}, #{gender}, #{breed}, #{age}, #{feature}, #{neuter}) ")
	public int insert(Dog dog);
	
	@Insert("insert into dog(shelterId, name, gender, breed, age, feature, neuter)"
	        + "values(#{shelterId}, #{name}, #{gender}, #{breed}, #{age}, #{feature}, #{neuter})")
	@SelectKey(statement = "SELECT LAST_INSERT_ID()", keyProperty = "dogno", before = false, resultType = int.class)
	public void insertSelectKey(Dog dog);
	
	@Select("SELECT * FROM dog WHERE dogno = #{dogno}")
	public Dog read(int i);
	@Delete("DELETE FROM dog WHERE dogno = #{dogno}")
	public int delete(int i);
	@Update("UPDATE board SET shelterId = #{shelterId}, name = #{name}, gender = #{gender}, breed = #{breed}, age = #{age}, desc = #{desc}, neuter = #{neuter} WHERE dogno = #{dogno}")
	public int update(Dog dog);
}
