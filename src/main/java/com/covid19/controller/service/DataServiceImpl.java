package com.covid19.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.controller.entity.Data;
import com.covid19.controller.repository.DataRepository;


@Service
public class DataServiceImpl implements DataService {
	
	@Autowired
	private DataRepository repo;

	@Override
	public Data saveLocation(Data location) {
		return repo.save(location);
	}

	@Override
	public void deleteLocation(Data location) {
		repo.delete(location);

	}

	@Override
	public Data getLocationById(int id) {
		return  repo.getById(id);
	}

	@Override
	public List<Data> getAllLocation() {
		return repo.findAll();
	}
	public DataRepository getRepo() {
		return repo;
	}

	public void setRepo(DataRepository repo) {
		this.repo = repo;
	}


}
