package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "pottab")
public class PurchaseOrderType {

	@Id
	@GeneratedValue
	@Column(name = "pid")
	private Integer id;
	@Column(name = "pocode")
	private String orderCode;
	@Column(name = "prn")
	private Integer referenceNumber;
	@Column(name = "pqc")
	private String qualityCheck;
	@Column(name = "pds")
	private String status;
	@Column(name = "pdesc")
	private String description;
	
    @ManyToOne
    @JoinColumn(name="shipIdFk")
	private ShipmentType sob;
	
	public PurchaseOrderType() {
		super();
	}

	public PurchaseOrderType(Integer id) {
		super();
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public Integer getReferenceNumber() {
		return referenceNumber;
	}

	public void setReferenceNumber(Integer referenceNumber) {
		this.referenceNumber = referenceNumber;
	}

	public String getQualityCheck() {
		return qualityCheck;
	}

	public void setQualityCheck(String qualityCheck) {
		this.qualityCheck = qualityCheck;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ShipmentType getSob() {
		return sob;
	}

	public void setSob(ShipmentType sob) {
		this.sob = sob;
	}

	@Override
	public String toString() {
		return "PurchaseOrderType [id=" + id + ", orderCode=" + orderCode + ", referenceNumber=" + referenceNumber
				+ ", qualityCheck=" + qualityCheck + ", status=" + status + ", description=" + description + ", sob="
				+ sob + "]";
	}
	 
   
}
