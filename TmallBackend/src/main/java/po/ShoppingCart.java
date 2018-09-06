package po;

public class ShoppingCart {
	private int id;
	private int uid;
	private int pid;
	private int cartNum;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public ShoppingCart(int id, int uid, int pid, int cartNum) {
		super();
		this.id = id;
		this.uid = uid;
		this.pid = pid;
		this.cartNum = cartNum;
	}
	public ShoppingCart() {
		super();
	}
	public ShoppingCart(int uid, int pid, int cartNum) {
		super();
		this.uid = uid;
		this.pid = pid;
		this.cartNum = cartNum;
	}
	@Override
	public String toString() {
		return "ShoppingCart [id=" + id + ", uid=" + uid + ", pid=" + pid + ", cartNum=" + cartNum + "]";
	}
	
	
	
	
}
