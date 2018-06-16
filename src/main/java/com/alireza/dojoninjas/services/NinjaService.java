package com.alireza.dojoninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.alireza.dojoninjas.models.Ninja;
import com.alireza.dojoninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
//	return all Ninjas
	public List <Ninja> allNinjas(){
		return ninjaRepository.findAll();
	}
	
	//save
	public Ninja creatNinja(Ninja b) {
		return ninjaRepository.save(b);
	}
	
	
	
}
