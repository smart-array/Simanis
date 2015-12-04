package id.co.sa.web.controller;

import id.co.sa.persistence.model.Sekolah;
import id.co.sa.persistence.service.SekolahService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/sekolah")
public class SekolahController {

	@Autowired
	private SekolahService sekolahService;

//	@RequestMapping(value="/list", method=RequestMethod.GET)
//	public ModelAndView sekolahListPage( final Model model, @RequestParam("idSekolah") final Long idSekolah) {
//		ModelAndView mav = new ModelAndView("sekolah-list");
////		List sekolahList = sekolahService.getNameByID(idSekolah);
//		mav.addObject("sekolahList", sekolahList);
//		return mav;
//	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView sekolahListPage() {
		ModelAndView mav = new ModelAndView("sekolah/sekolah-list");
		List<Sekolah> sekolahList = sekolahService.findAll();
		mav.addObject("sekolahList", sekolahList);
		return mav;
	}
}
