package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IPurchaseOrderTypeDao;
import in.nit.model.PurchaseOrderType;
import in.nit.model.ShipmentType;

@Repository
public class PurchaseOrderTypeDaoImpl implements IPurchaseOrderTypeDao {

	@Autowired
	private HibernateTemplate ht;

	@Override
	public Integer saveOrderType( PurchaseOrderType pot) {
		return (Integer)ht.save(pot);
	}

	@Override
	public List<PurchaseOrderType> displayAllPurchaseOrderTypes() {
		return ht.loadAll(PurchaseOrderType.class);
	}

	@Override
	public void deletePurchaseOrderId(Integer id) {
		ht.delete(new PurchaseOrderType(id));
	}

	public PurchaseOrderType getOnePurchaseOrderType(Integer id){
		return ht.get(PurchaseOrderType.class,id);
	}

	@Override
	public void updatePurchaseOrderType(PurchaseOrderType ob) {
		ht.update(ob);
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Object[]> getPurchaseOrderCodeCount() {
		String hql=" select porderCode,count(porderCode)  "
				+ " from in.nit.model.PurchaseOrderType"
				+ " group by porderCode";
		return (List<Object[]>) ht.find(hql);
	}

	
}

