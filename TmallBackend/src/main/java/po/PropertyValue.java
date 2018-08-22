package po;

import org.springframework.stereotype.Component;

/**
 * 商品属性值类
 * @author Administrator
 *
 */
@Component
public class PropertyValue {
	private int id;
	private int cid;
	String name;
	
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
	
	public PropertyValue(int id, int cid, String name) {
		super();
		this.id = id;
		this.cid = cid;
		this.name = name;
	}
	
	public PropertyValue() {
		super();
	}
	
	@Override
	public String toString() {
		return "PropertyValue [id=" + id + ", cid=" + cid + ", name=" + name + "]";
	}
	
	
	
}
