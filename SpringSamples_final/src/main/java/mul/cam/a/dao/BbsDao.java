package mul.cam.a.dao;

import java.util.List;

import mul.cam.a.dto.BbsDto;
import mul.cam.a.dto.BbsParam;

public interface BbsDao {

	List<BbsDto> bbslist(BbsParam bbs);	
	int getAllBbs(BbsParam bbs);
	
	int writeBbs(BbsDto dto);
	
	BbsDto getBbs(int seq);

	int updateBbs(BbsDto dto);
	
	int deleteBbs(BbsDto dto);
}
