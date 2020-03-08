package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IUomTypeDao;
import in.nit.model.UomType;

@Repository
public class UomTypeDaoImpl  implements IUomTypeDao{
	@Autowired
	private HibernateTemplate ht;

	@Override
	public Integer saveUomType(UomType ob) {
		return (Integer) ht.save(ob);
	}

	@Override
	public List<UomType> displayAllUomTypes() {
		return ht.loadAll(UomType.class);
	}

	@Override
	public void deleteUomById(Integer id) {
		ht.delete(new UomType(id));
	}

	@Override
	public UomType getOneUomType(Integer id) {
		return ht.get(UomType.class,id);

	}
	@Override
	public void updateUomType(UomType ob) {
		ht.update(ob);

	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> getUomModelCount() {
		String hql=" select uomModel,count(uomModel) "
				+ " from in.nit.model.UomType "
				+ " group by uomModel ";
		return (List<Object[]>) ht.find(hql);
	}
	@Override
	public List<Object[]> getUomIdAndUomModel() {
		String hql="select uomId,uomModel from in.nit.model.UomType";
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Object[]> list=(List<Object[]>) ht.find(hql);
		return list;
	}

}
