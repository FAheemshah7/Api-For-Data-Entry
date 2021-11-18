package com.covid19.controller.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.covid19.controller.entity.Data;


public interface DataRepository extends JpaRepository<Data,Integer> {

}
