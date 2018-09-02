package com.hikvision.file;

public class Person1 {

	
	private int id;
	
	private String name;
	
	private int age;
	
	private int email;
	
	private int device_id;
	
	private Device1 device;
	
	private Department1 department;

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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getEmail() {
		return email;
	}

	public void setEmail(int email) {
		this.email = email;
	}

	public int getDevice_id() {
		return device_id;
	}

	public void setDevice_id(int device_id) {
		this.device_id = device_id;
	}

	public Device1 getDevice() {
		return device;
	}

	public void setDevice(Device1 device) {
		this.device = device;
	}

	public Department1 getDepartment() {
		return department;
	}

	public void setDepartment(Department1 department) {
		this.department = department;
	}
	
	

	public Person1() {
		super();
	}

	public Person1(int id, String name, int age, int email, int device_id, Device1 device, Department1 department) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.email = email;
		this.device_id = device_id;
		this.device = device;
		this.department = department;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", age=" + age + ", email=" + email + ", device_id=" + device_id
				+ ", device=" + device + ", department=" + department + "]";
	}
	
	
	
}
