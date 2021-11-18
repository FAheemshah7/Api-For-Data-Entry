package com.covid19.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.covid19.controller.entity.Data;
import com.covid19.controller.repository.DataRepository;

@RestController
@RequestMapping("Data")
public class DataRestController {
	@Autowired
	DataRepository repository;
	
	@GetMapping("getAll")
	public List<Data> getAllLocation(){	
		return repository.findAll();
	}
	@PostMapping("/saveData")
	public Data createLocation(@RequestBody Data location) {
		return repository.save(location);
	}

	@DeleteMapping("/del/{id}")
	public String deleteLocation(@PathVariable("id") int id) {
		repository.deleteById(id);
		return "Data Deleted Successfully";
	}
	@GetMapping("/fetchById/{id}")
	public Optional<Data> getLocation(@PathVariable("id") int id) {
		return repository.findById(id);
	}
 

}
