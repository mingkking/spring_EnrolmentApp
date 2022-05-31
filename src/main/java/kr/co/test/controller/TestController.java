package kr.co.test.controller;

import java.util.ArrayList;
import java.util.Iterator;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.test.mapper.MapperInterface;
import kr.co.test.vo.LecturerVO;
import kr.co.test.vo.SubjectVO;

@Controller
@Service
public class TestController {
	@Autowired
	private MapperInterface mapperInterface;
	
	
	@RequestMapping("/subjectList")
	public String subjectList(Model model) {
		ArrayList<SubjectVO> subjectVOList =  mapperInterface.selectSubjectList();
		if(subjectVOList.size() != 0) {
			model.addAttribute("subjectVOList", subjectVOList);
		}
		
		int cnt = mapperInterface.selectSubjectCnt();
		model.addAttribute("cnt", cnt);
		
		return "subjectList";
	}
	
	@RequestMapping("/subjectAdd")
	public String subjectAdd(Model model) {
		ArrayList<LecturerVO> lecturerVOList = mapperInterface.selectLecturerList();
		if(lecturerVOList.size() != 0) {
			model.addAttribute("lecturerVOList", lecturerVOList);
		}
		
		return "subjectAdd";
	}
	
	@RequestMapping("/subjectInsertPro")
	public String subjectInsertPro(SubjectVO subjectVO) {
		mapperInterface.insertSubject(subjectVO);
		
		return "redirect:subjectList";
	}
	
	@RequestMapping("/subjectUpdate")
	public String subjectUpdate(SubjectVO subjectVO, Model model) {
		subjectVO = mapperInterface.selectSubjectOne(subjectVO.getId());
		model.addAttribute("subjectVO", subjectVO);
		
		ArrayList<LecturerVO> lecturerVOList = mapperInterface.selectLecturerList();
		if(lecturerVOList.size() != 0) {
			model.addAttribute("lecturerVOList", lecturerVOList);
		}
		
		return "subjectUpdate";
	}
	
	@RequestMapping("/subjectUpdatePro")
	public String subjectUpdatePro(SubjectVO subjectVO) {
		mapperInterface.updateSubject(subjectVO);
		
		return "redirect:subjectList";
	}
	
	@RequestMapping("/subjectDeletePro")
	public String subjectDeletePro(SubjectVO subjectVO) {
		mapperInterface.deleteSubject(subjectVO);
		
		return "redirect:subjectList";
	}
	
	// 강사
	@RequestMapping("/lecturerList")
	public String lecturerList(Model model) {
		ArrayList<LecturerVO> lecturerVOList =  mapperInterface.selectLecturerList();
		if(lecturerVOList.size() != 0) {
			model.addAttribute("lecturerVOList", lecturerVOList);
		}
		
		int cnt = mapperInterface.selectLecturerCnt();
		model.addAttribute("cnt", cnt);
		
		return "lecturerList";
	}
	
	@RequestMapping("/lecturerAdd")
	public String lecturerAdd() {
		
		return "lecturerAdd";
	}
	
	@RequestMapping("/lecturerInsertPro")
	public String lecturerInsertPro(LecturerVO lecturerVO) {
		mapperInterface.insertLecturer(lecturerVO);
		
		return "redirect:lecturerList";
	}
	
	@RequestMapping("/lecturerDeletePro")
	public String lecturerDeletePro(LecturerVO lecturerVO) {
		mapperInterface.deleteLecturer(lecturerVO);
		
		return "redirect:lecturerList";
	}
}
