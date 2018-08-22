package po;

import org.springframework.stereotype.Component;

/**
 * 商品种类
 * @author hzj
 *
 */
@Component
public class Category {
	private int id;
	private String name;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Category(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public Category() {
		super();
	}
	
	@Override
	public String toString() {
		return "category [id=" + id + ", name=" + name + "]";
	}
	
	
	
	
}
