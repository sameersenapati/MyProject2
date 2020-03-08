package in.nit.service;

import java.util.List;

import in.nit.model.WhuserType;

public interface IWhuserTypeService {
	public Integer saveWhuserType(WhuserType ob);
	List<WhuserType> displayAllWhuerTypes();
	public void deleteAllWhuserType(Integer id);
	public WhuserType getOneWhuserType(Integer id);
	public void updateWhuserType(WhuserType ob);
	public List<Object[]> getWhuserCodeCount();

}
