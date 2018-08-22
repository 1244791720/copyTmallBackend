package po;

import org.springframework.stereotype.Component;

/**
 * 商品属性类
 * @author Administrator
 *
 */
@Component
public class Property {
	private int id;
	private int cid;
	private String name;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public Property(int id, int cid, String name) {
		super();
		this.id = id;
		this.cid = cid;
		this.name = name;
	}
	
	public Property() {
		super();
	}
	
	
	@Override
	public String toString() {
		return "Property [id=" + id + ", cid=" + cid + ", name=" + name + "]";
	}
	
	
	
}
