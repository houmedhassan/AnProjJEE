package com.application.metier;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.application.beans.Person;

/**
 * 
 * @author HOUMED, ABDOULRAHIM
 *
 */

@Service
public class AnnuaireValidator implements Validator {

	@Override
	public boolean supports(Class<?> perso) {
		// TODO Auto-generated method stub
		return Person.class.isAssignableFrom(perso);
	}

	@Override
	public void validate(Object target, Errors error) {
		
	}

}
