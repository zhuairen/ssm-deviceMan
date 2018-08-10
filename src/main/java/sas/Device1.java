package sas;

public class Device1 {

	private int id;
	private String device_name;
	private double price;
	
	public Device1() {
		super();
	}
	public Device1(int id, String device_name, double price) {
		super();
		this.id = id;
		this.device_name = device_name;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDevice_name() {
		return device_name;
	}
	public void setDevice_name(String device_name) {
		this.device_name = device_name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
