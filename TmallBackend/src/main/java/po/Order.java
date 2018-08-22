package po;

import java.util.Date;

import org.springframework.stereotype.Component;
/**
 * ∂©µ•¿‡
 * @author Administrator
 *
 */
@Component
public class Order {
	private int id;
	private String orderCode;
	private String address;
	private String post;
	private String receiver;
	private String mobile;
	private String UserMessage;
	private Date createDate;
	private Date payDate;
	private Date deliveryDate;
	private Date confirmDate;
	private int uid;
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getUserMessage() {
		return UserMessage;
	}
	public void setUserMessage(String userMessage) {
		UserMessage = userMessage;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public Date getConfirmDate() {
		return confirmDate;
	}
	public void setConfirmDate(Date confirmDate) {
		this.confirmDate = confirmDate;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Order(int id, String orderCode, String address, String post, String receiver, String mobile,
			String userMessage, Date createDate, Date payDate, Date deliveryDate, Date confirmDate, int uid,
			String status) {
		super();
		this.id = id;
		this.orderCode = orderCode;
		this.address = address;
		this.post = post;
		this.receiver = receiver;
		this.mobile = mobile;
		UserMessage = userMessage;
		this.createDate = createDate;
		this.payDate = payDate;
		this.deliveryDate = deliveryDate;
		this.confirmDate = confirmDate;
		this.uid = uid;
		this.status = status;
	}
	
	public Order() {
		super();
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", orderCode=" + orderCode + ", address=" + address + ", post=" + post
				+ ", receiver=" + receiver + ", mobile=" + mobile + ", UserMessage=" + UserMessage + ", createDate="
				+ createDate + ", payDate=" + payDate + ", deliveryDate=" + deliveryDate + ", confirmDate="
				+ confirmDate + ", uid=" + uid + ", status=" + status + "]";
	}
	
	
	
	
	
	
}
