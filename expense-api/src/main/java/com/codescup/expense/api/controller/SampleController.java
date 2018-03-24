package com.codescup.expense.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.codescup.expense.app.data.BaseDataDAO;

@RestController
@RequestMapping("api/v1")
public class SampleController {
	
	@Autowired
	private BaseDataDAO baseDataDao;
	
	@RequestMapping(value="/greet",method=RequestMethod.GET)
	public String greet() {
		System.out.println(baseDataDao.getEntityManager());
		baseDataDao.saveUser();
		return "Sujit";
	}
}
