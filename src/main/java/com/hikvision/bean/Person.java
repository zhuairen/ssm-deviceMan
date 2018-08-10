package com.hikvision.bean;

public class Person {
    private Integer id;

    private String name;

    private String password;

    private Integer age;

    private String email;

    private String deptName;

    private Integer deviceId;

    private String power;
    
    private int devCount;
    
    private Device device;
    
    

    public Person() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Person(Integer id, String name, String password, Integer age, String email, String deptName,
			Integer deviceId, String power) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.age = age;
		this.email = email;
		this.deptName = deptName;
		this.deviceId = deviceId;
		this.power = power;
	}

	
	
	public int getDevCount() {
		return devCount;
	}

	public void setDevCount(int devCount) {
		this.devCount = devCount;
	}

	public Device getDevice() {
		return device;
	}

	public void setDevice(Device device) {
		this.device = device;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName == null ? null : deptName.trim();
    }

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power == null ? null : power.trim();
    }
}