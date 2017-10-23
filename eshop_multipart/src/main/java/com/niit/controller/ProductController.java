package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Product;
import com.niit.model.Supplier;


@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productdao;
	
	@Autowired
	CategoryDAO categorydao;
	
	@Autowired
	SupplierDAO supplierdao;
	
	@RequestMapping("/returnproduct")
	public String returnproduct(Model model)
	{
		List<Product> prolist= productdao.getProductList();
		model.addAttribute("prolist",prolist);
		return "viewproduct";
	}
	

	@RequestMapping("/viewproduct")
	public String viewproduct(Model model)
	{
		List<Product> prolist= productdao.getProductList();
		model.addAttribute("prolist",prolist);
		return "viewproduct";
	}
	
	/*@RequestMapping("/productdescription/{productid}")
	public String getdescription(@PathVariable("productid")String id, Model model)
	{
		Product product = productdao.getProductList();
		model.addAttribute("product",product);
		return "productdescription";
	}*/
	@RequestMapping(value="/product")
	public String getproduct(@ModelAttribute("product")Product product,Model model)
	{
		model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
		List<Supplier> supplist=supplierdao.getSupplierList();
		System.out.println("supplier list in controller"+supplist);	
		model.addAttribute("supplist",supplist);
		return "Product";
		
	}
	
	@RequestMapping(value="SaveProduct",method=RequestMethod.POST)
	public String NewMethod(@Valid @ModelAttribute("product")Product product,Model model,BindingResult result)
	{  
		if(result.hasErrors())
	{
		return "Product";
	}
		productdao.addProduct(product);
		model.addAttribute("product",new Product());
	    model.addAttribute("prolist",this.productdao.getProductList());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		model.addAttribute("supplist",this.supplierdao.getSupplierList());
		MultipartFile image = product.getImage();
		Path path=	Paths.get("C:\\e-Shop_multipart\\src\\main\\webapp\\images\\"+product.getProductid()+".jpg");
		try 
		{
				image.transferTo(new File(path.toString()));
		}
		catch (IllegalStateException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		catch (IOException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "Product";

	}
	
	@RequestMapping("/deleteproduct")
	public String deleteproduct(@RequestParam("pid")String id,Model model)
	{
		productdao.deleteProduct(id);
		model.addAttribute("product",new Product());
	    model.addAttribute("prolist",this.productdao.getProductList());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		model.addAttribute("supplist",this.supplierdao.getSupplierList());
		return "Product";
	}
	
}
