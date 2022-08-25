package com.jobdongsan.project.service;

import java.util.ArrayList;

import com.jobdongsan.project.model.MapVO;

public interface IMapService {
	
	ArrayList<MapVO> listAllMap(); // 전체 직업 체험 장소 리스트
	MapVO detailMapView(int mapJobNo); // 맵 상세 정보 출력

}
