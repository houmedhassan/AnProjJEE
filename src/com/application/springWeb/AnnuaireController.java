package com.application.springWeb;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.validation.FieldError;

import com.application.beans.Group;
import com.application.beans.Person;
import com.application.business.DaoException;
import com.application.business.PersonDao;
import com.application.metier.AnnuaireValidator;

@Controller()
@RequestMapping("/annuaire")
public class AnnuaireController {

	@Autowired
	PersonDao personDao;
	
	

	protected final Log logger = LogFactory.getLog(getClass());

	/**
	 * 
	 * @return the home page.
	 *
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homeAction() {
		logger.info("Returning hello view");
		return new ModelAndView("accueil");
	}

	/**
	 * 
	 * @return the form for add the person in dataBase
	 *
	 */
	@RequestMapping(value = "/editPersonForm", method = RequestMethod.GET)
	public String ajoutPerson(@ModelAttribute Person p) {
		return "ajoutPersonForm";
	}
	
	
	@RequestMapping (value="ajoutform",method=RequestMethod.GET)
	public String register(ModelMap modelMap){
		modelMap.put("pers", new Person());
		return "ajoutPersonForm";
	}
		
	@RequestMapping(value="/addPerson", method=RequestMethod.POST)
	public String register(
			@ModelAttribute(value="pers") @Valid Person person, 
			BindingResult bindingResult, ModelMap modelMap) throws DaoException{
			
		AnnuaireValidator annuaireValidator = new AnnuaireValidator();
		
		if(bindingResult.hasErrors()){
			List <FieldError> lst = bindingResult.getFieldErrors();
			
			return "ajoutPersonForm";
		}else{
			modelMap.put("pers", person);
			personDao.savePerson(person);
			return "accueil";
		}
	}
	/**
	 * 
	 * This method adds a person to the database. The information is retrieved
	 * from the form
	 * 
	 * @param req
	 * @param persId
	 * @throws DaoException
	 *
	 */
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute Person p, BindingResult result) {
	    if (result.hasErrors()) {
	        return "ajoutPersonForm";
	    }
	    try {
			personDao.savePerson(p);
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return "redirect:listofPerson";
	}

	@ModelAttribute("listGroup")
	Collection<Group> groups(){
	    return personDao.findAllGroups();
	}
	/**
	 * 
	 * @return return the page which contents the list of group and the list of
	 *         group.
	 * @throws DaoException
	 * 
	 *the list of group will be used in the page returned by this method
	 * 
	 */
	@RequestMapping(value = "/listofGroup", method = RequestMethod.GET)
	public String listGroup() throws DaoException {
		return "listofGroup";
	}

	/**
	 * 
	 * @param req
	 * @param group
	 * @return
	 * 
	 */
	@RequestMapping(value="/listofPerson", method =RequestMethod.GET)
	public ModelAndView listPerson(@RequestParam(value = "idGroup") Long value){
		
		
		Collection<Person> listPerson = null;
		try {
			listPerson = personDao.findAllPersons(value);
		} catch (DaoException e) {
			// TODO Auto-generated catch block
			e.getMessage();
		} 
		
		return new ModelAndView("listofPerson", "listPerson", listPerson);
	}
	
	@RequestMapping(value="/person", method =RequestMethod.GET)
	public ModelAndView personDescription(@RequestParam(value = "idPerson") Long idPerson) throws DaoException{
	
		Person pers = personDao.findPerson(idPerson);
		return new ModelAndView("person", "pers", pers );
	}
}
