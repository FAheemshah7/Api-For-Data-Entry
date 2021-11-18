package com.covid19.controller.service;

import java.util.List;

import com.covid19.controller.entity.Data;

public interface DataService {
	Data saveLocation(Data location);
	void deleteLocation(Data location);
	Data getLocationById(int id);
	List<Data> getAllLocation();

}
