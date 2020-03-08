package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.nit.model.PartType;
import in.nit.service.IPartTypeService;

@Controller
@RequestMapping("/part")
public class PartTypeController {
	@Autowired
	private IPartTypeService service;

	@RequestMapping("/regi")
	public String showUserPage(@ModelAttribute PartType partType,Model model) {
		//form backing Objects
		model.addAttribute("partType", new PartType());
		return "PartTypeRegister";
	}

	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String savePart(@ModelAttribute PartType partType,Model model) {
		Integer id=service.savePartType(partType);
		String message="PartType '"+id+"' saved";
		model.addAttribute("message", message);
		return "PartTypeRegister";
	}

	@RequestMapping("/display")
	public String diplayAll(Model model) {
		List<PartType> list=service.displayAllPartTypes();
		model.addAttribute("list",list);
		return "PartTypeData";
	}

	@RequestMapping("/delete")
	public String deletePartType(@RequestParam("pid") Integer id,Model model) {
		service.deletePartTypeId(id);
		String message = "PartType '"+id+"' deleted";
		model.addAttribute("message",message);
		List<PartType> list=service.displayAllPartTypes();
		model.addAttribute("list",list);
		return "PartTypeData";
	}
	@RequestMapping("/edit")
	public String showEditPage(@RequestParam("sid") Integer id,Model model) {
		PartType ut = service.getOnePartType(id);
		model.addAttribute("partType", ut);
		return "PartTypeEdit";
	}

	@RequestMapping(value="/update",method = RequestMethod.POST)
	public String updatePartType(
			@ModelAttribute PartType partType,Model model
			) {
		service.updatePartType(partType);
		String message="partType '"+partType.getPartId()+"' Updated";
		model.addAttribute(message, message);
		List<PartType> list=service.displayAllPartTypes();
		model.addAttribute("list", list);
		return "PartTypeData";
	}

}
