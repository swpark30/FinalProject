package com.jobdongsan.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobdongsan.project.model.JobVO;
import com.jobdongsan.project.service.JobService;

@Controller
public class JobController {
	// DI 설정
	@Autowired
	JobService jobService;
	
	// 전체 직업 출력
	@RequestMapping("/job_index")
	public String viewJobAllList(Model model) {
		ArrayList<JobVO> jobList = jobService.listAllJob();
		model.addAttribute("jobList", jobList);
		
		return "job/job_index";
	}
	
	// 직업 정보 상세 조회
	@RequestMapping("/job_detail/{jobNo}")
	public String detailViewJob(@PathVariable int jobNo, HttpSession session, Model model) {
		JobVO job = jobService.detailViewJob(jobNo);
		model.addAttribute("job", job);
		
		String memId = (String)session.getAttribute("sid");
		model.addAttribute("memId", memId);
		
		return "job/job_detail";
	}
	
	// 직업 검색
	@RequestMapping("/jobsearchtest")
	public String jobSearch(@RequestParam HashMap<String, Object> param, Model model) {
		ArrayList<JobVO> jobList = jobService.jobSearch(param);
		model.addAttribute("jobList", jobList);
		
		return "job/job_search_result";
	}
	
	// 관심 직업(찜직업) 담기
	@ResponseBody
	@RequestMapping("/insert_job")
	public String insertJob(@RequestParam HashMap<String, Object> param, HttpSession session) {
		String result = null;
		String memId = (String)session.getAttribute("sid");
		HashMap<String, Object> map = jobService.checkJobNo(memId);
		
		if (map == null) {
			param.put("memId", memId);
			jobService.insertJob(param);
			result = "0";
		}
		else {
			result = "2";
		}
		
		return result;
	}
	
	// 관심 직업(찜직업) 존재 여부 확인
	@ResponseBody
	@RequestMapping("/update_job")
	public String updateJob(@RequestParam HashMap<String, Object> param, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		int jobNo = Integer.parseInt((String)param.get("jobNo"));
		HashMap<String, Object> map = jobService.checkJobNo(memId);
		String result = null;
		int jobNo2 = (int)map.get("jobNo");
		
		
		if(jobNo2 == jobNo) {
			jobService.deleteJob(memId);
			
			result = "1";
		}else {
			map.put("jobNo", jobNo); 
			map.put("memId", memId);
			jobService.updateJob(map);
			
			result = "2";
		}
		
		return result;
	}
	
	// 6개 유형별 직업 보기 
	@RequestMapping("/job_category/{categoryNo}")
	public String categoryJob(@PathVariable int categoryNo, Model model) {
		ArrayList<JobVO> jobList = jobService.listCategoryJob(categoryNo);
		model.addAttribute("jobList", jobList);
		
		return "job/job_category";
	}
}