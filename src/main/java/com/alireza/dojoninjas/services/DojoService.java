package com.alireza.dojoninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.alireza.dojoninjas.models.Dojo;
import com.alireza.dojoninjas.repositories.DojoRepository;

@Service
public class DojoService {
	private final DojoRepository dojoRepository;
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}
		
	//RETURN ALL
	public List<Dojo> allDojos(){
		return dojoRepository.findAll();
	}
	//create
	public Dojo createDojo(Dojo b) {
		return dojoRepository.save(b);
	}
	////find dojo
    public Dojo findDojo(Long id) {
    	Optional<Dojo> optionalDojo = dojoRepository.findById(id);
    	if (optionalDojo.isPresent()) {
    		return optionalDojo.get();
    	}else {
    		return null;
    	}
    }

}
