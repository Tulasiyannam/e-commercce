package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierdao;
	
	@RequestMapping(value="/supplier")
	
	public ModelAndView addsupplier(@ModelAttribute("supplier")Supplier supplier)
	{
		ModelAndView mv=new ModelAndView("Supplier","supplist",this.supplierdao.getSupplierList());
		return mv;
		
	}
	
	@RequestMapping(value="savesupplier",method=RequestMethod.POST)
	public String getsupplier(Supplier supplier,Model model)
	{
		supplierdao.addsupplier(supplier);
		model.addAttribute("supplist",this.supplierdao.getSupplierList());	
		return "Supplier";
		
	}
	
	@RequestMapping(value="/deletesupp")
	public String deletesupplierlist(@RequestParam("sid")String suppid,Model model)
	{
		supplierdao.deletesupplier(suppid);
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("supplist",this.supplierdao.getSupplierList());
		return "Supplier";
		
	}

	@RequestMapping(value="/editsupp")
	public String getSupplier(@RequestParam("sid")String suppid,Model model)
	{
		Supplier supplier=supplierdao.getSupplier(suppid);
		model.addAttribute("supplierdata", supplier);
		model.addAttribute("supplier1", new Supplier());
		return "Editsupplier";	
	}
	
	@RequestMapping(value="editsupp",method=RequestMethod.POST)
	public String updatesupplier(Supplier supplier,Model model)
	{
		supplierdao.editsupplier(supplier);
		model.addAttribute("supplist", this.supplierdao.getSupplierList());
		return "Supplier";
		
	}
}
