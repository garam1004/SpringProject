package com.spring.busking;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("buskingService")
public class BuskingService {
	@Autowired
	private BuskingDAO buskingDAO;
	public void insertBusking(BuskingVO buskingVO) {
		buskingDAO.insertBusking(buskingVO);
	}
	public List Loc1List() {
		HashMap hashMap = new HashMap();
		return buskingDAO.Loc1List(hashMap);
	}
	public List Loc2List(String loc1) {
		HashMap hashMap = new HashMap();
		hashMap.put("loc1", loc1);
		return buskingDAO.Loc2List(hashMap);
	}
	public List Loc3List(String loc1,String loc2) {
		HashMap hashMap = new HashMap();
		hashMap.put("loc1", loc1);
		hashMap.put("loc2", loc2);
		return buskingDAO.Loc3List(hashMap);
	}
	public List resTime(String date) {
		HashMap hashMap = new HashMap();
		hashMap.put("date", date);
		return buskingDAO.resTime(hashMap);
	}
	public List resBusking() {
		HashMap hashMap = new HashMap();
		return buskingDAO.resBusking(hashMap);
	}public List allBusking() {
		HashMap hashMap = new HashMap();
		return buskingDAO.allBusking(hashMap);
	}
}
