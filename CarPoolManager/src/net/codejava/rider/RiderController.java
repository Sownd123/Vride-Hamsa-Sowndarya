package net.codejava.rider;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RiderController {
	
	@Autowired
	private RiderService service;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav=new ModelAndView("index");
		
		
		List<Rider> listRider = service.listAll();
		
		mav.addObject("listRider", listRider);
		return mav;
	}
	@RequestMapping("/new")
	public String newRiderForm(Map<String,Object> model) {
		model.put("rider", new Rider());
		return "new_rider";
	}
	
	@RequestMapping(value ="/save",method = RequestMethod.POST)
	public String saveRider(@ModelAttribute("rider") Rider rider)
	{
		service.save(rider);
		
		return "redirect:/";
	}

	@RequestMapping("/edit")
	public ModelAndView editCustomerForm(@RequestParam long id)
	{
	
		ModelAndView mav=new ModelAndView("edit_rider");
		Rider rider = service.get(id);
		mav.addObject("rider", rider);
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteCustomer(@RequestParam long id)
	{
	
		service.delete(id);
		
		return "redirect:/";
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword)
	{
	ModelAndView mav = new ModelAndView("search");
	List<Rider> result=service.search(keyword);
	mav.addObject("result", result);
	return mav;
	}
}
