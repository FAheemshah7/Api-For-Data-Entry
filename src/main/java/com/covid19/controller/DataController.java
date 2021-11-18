package com.covid19.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.covid19.controller.entity.Data;
import com.covid19.controller.service.DataService;



@Controller
public class DataController {
	
	@Autowired
	DataService service;
	
	@RequestMapping("/addData")
	public String showCreat() {
		return "addData";	
	}
	@RequestMapping("/saveLoc")
	public String saveLocation(@ModelAttribute("data") Data data,ModelMap modelMap) {
	Data savedData=service.saveLocation(data);
		String msg="Data saved wit ID:"+savedData.getId();
		modelMap.addAttribute("msg",msg);
		return "addData";
	}
	
	@RequestMapping("/displayData")
	public String displayLocations(ModelMap modelMap) {
		List<Data> data=service.getAllLocation();
		modelMap.addAttribute("data",data);
		return "displayData";
	} 
	@RequestMapping("deleteData")
	public String deleteLocation(@RequestParam("id") int id,ModelMap modelMap) {
	
		Data data=service.getLocationById(id);
		
		service.deleteLocation(data);
 		List<Data> data1=service.getAllLocation();
		modelMap.addAttribute("data1",data1);
		
		return "displayData";
	}
	

}
