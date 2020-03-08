package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IWhuserTypeDao;
import in.nit.model.WhuserType;

@Repository
public class WhuserTypeDaoImpl implements IWhuserTypeDao {
	@Autowired
	private HibernateTemplate ht;
    @Override
	public Integer saveWhuserType(WhuserType ob) {
		return (Integer) ht.save(ob);

	}

	@Override
	public List<WhuserType> displayAllWhuerTypes() {
		return ht.loadAll(WhuserType.class);
	}

	@Override
	public void deleteAllWhuserType(Integer id) {
		ht.delete(new WhuserType(id));		
	}

	@Override
	public WhuserType getOneWhuserType(Integer id) {
		return ht.get(WhuserType.class,id);


	}
	@Override
	public void updateWhuserType(WhuserType ob) {
		ht.update(ob);
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> getWhuserCodeCount() {
		String hql=" select userCode,count(userCode) "
				+ " from in.nit.model.WhuserType "
				+ " group by userCode ";
				return (List<Object[]>) ht.find(hql);
	}
}
