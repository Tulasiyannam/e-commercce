package com.niit.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdminController {

	 @RequestMapping("/Admin")
	    public String getAdmin()
	    {
	    	return "Admin";
	    }
	/* @Autowired
		ProductDAO productdao;
		
		@Autowired
		CategoryDAO categorydao;
		
		@Autowired
		SupplierDAO supplierdao;
		
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
			Path path=	Paths.get("C:\\Users\\welcome\\Final_Work\\e-Shop\\src\\main\\webapp\\images\\"+product.getProductid()+".jpg");
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
*/
}
