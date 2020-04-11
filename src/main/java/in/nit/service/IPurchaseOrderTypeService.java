package in.nit.service;

import java.util.List;

import in.nit.model.PurchaseOrderType;

public interface IPurchaseOrderTypeService {
	Integer saveOrderType( PurchaseOrderType p);
	List<PurchaseOrderType> displayAllPurchaseOrderTypes();
	public void deletePurchaseOrderId(Integer id);
	public PurchaseOrderType getOnePurchaseOrderType(Integer id);
	public void updatePurchaseOrderType(PurchaseOrderType ob);
	public List<Object[]> getPurchaseOrderCodeCount();
	

}
