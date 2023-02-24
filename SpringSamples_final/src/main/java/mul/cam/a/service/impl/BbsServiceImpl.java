package mul.cam.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.cam.a.dao.BbsDao;
import mul.cam.a.dto.BbsDto;
import mul.cam.a.dto.BbsParam;
import mul.cam.a.service.BbsService;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	BbsDao dao;

	@Override
	public List<BbsDto> bbslist(BbsParam bbs) {		
		return dao.bbslist(bbs);
	}

	@Override
	public int getAllBbs(BbsParam bbs) {		
		return dao.getAllBbs(bbs);
	}

	@Override
	public boolean writeBbs(BbsDto dto) {
		int n = dao.writeBbs(dto);
		return n>0?true:false;
	}

	@Override
	public BbsDto getBbs(int seq) {		
		return dao.getBbs(seq);
	}

	@Override
	public boolean updateBbs(BbsDto dto) {
		int UpdatedBbsCount = dao.updateBbs(dto);
		return UpdatedBbsCount > 0 ? true : false;
	}	
	
	
	
}

