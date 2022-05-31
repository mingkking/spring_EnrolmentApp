package kr.co.test.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.test.vo.LecturerVO;
import kr.co.test.vo.SubjectVO;

public interface MapperInterface {
	// 교과
	@Select("select id, c.name, c.credit, l.name as lecturer, c.week, c.startHour, c.endHour from course_tbl c join lecturer_tbl l on c.lecturer = l.idx order by id")
	ArrayList<SubjectVO> selectSubjectList();
	
	@Select("select count(*) from course_tbl")
	int selectSubjectCnt();
	
	@Insert("insert into course_tbl values(#{id}, #{name}, #{credit}, #{lecturer}, #{week}, #{startHour}, #{endHour})")
	void insertSubject(SubjectVO subjectVO);
	
	@Select("select id, c.name, c.credit, l.name as lecturer, c.week, c.startHour, c.endHour from course_tbl c join lecturer_tbl l on c.lecturer = l.idx where id = #{id}")
	SubjectVO selectSubjectOne(@Param("id") String id);
	
	@Update("update course_tbl set id = #{id}, name = #{name}, credit = #{credit}, lecturer = #{lecturer}, week = #{week}, startHour = #{startHour}, endHour = #{endHour} where id = #{beforeId}")
	void updateSubject(SubjectVO subjectVO);
	
	@Delete("delete from course_tbl where id = #{id}")
	void deleteSubject(SubjectVO subjectVO);
	
	// 강사
	@Select("select * from lecturer_tbl order by idx")
	ArrayList<LecturerVO> selectLecturerList();
	
	@Select("select count(*) from lecturer_tbl")
	int selectLecturerCnt();
	
	@Insert("insert into lecturer_tbl values(lecturerNo_SEQ.nextVal, #{name}, #{major}, #{field})")
	void insertLecturer(LecturerVO lecturerVO);
	
	@Delete("delete from lecturer_tbl where idx = #{idx}")
	void deleteLecturer(LecturerVO lecturerVO);
	
}
