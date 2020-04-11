package in.nit.dao;

import java.util.List;

import in.nit.model.PurchaseOrderType;

public interface IPurchaseOrderTypeDao {
	Integer saveOrderType( PurchaseOrderType p);
	List<PurchaseOrderType> displayAllPurchaseOrderTypes();
	public void deletePurchaseOrderId(Integer id);
	public PurchaseOrderType getOnePurchaseOrderType(Integer id);
	public void updatePurchaseOrderType(PurchaseOrderType ob);
	public List<Object[]> getPurchaseOrderCodeCount();
	

}
