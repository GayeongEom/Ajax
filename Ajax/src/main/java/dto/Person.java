package dto;

public class Person {
	
	private String name = "Alice";
	int age = 20;
	protected String addr = "Seoul";
	public String phone;
	
	public Person() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", addr=" + addr + ", phone=" + phone + "]";
	}

	public Person(String name, int age, String addr, String phone) {
		super();
		this.name = name;
		this.age = age;
		this.addr = addr;
		this.phone = phone;
	}
	
	
	
	

}
