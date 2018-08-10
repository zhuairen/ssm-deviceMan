package com.hikvision.bean;

public class Device {
    private Integer devId;

    private String devSn;

    private String devName;

    private String devAddr;

    private Double devPrice;

    private String devDetail;
    
    

    public Device() {
		super();
	}

	public Device(Integer devId, String devSn, String devName, String devAddr, Double devPrice, String devDetail) {
		super();
		this.devId = devId;
		this.devSn = devSn;
		this.devName = devName;
		this.devAddr = devAddr;
		this.devPrice = devPrice;
		this.devDetail = devDetail;
	}



	public Integer getDevId() {
        return devId;
    }

    public void setDevId(Integer devId) {
        this.devId = devId;
    }

    public String getDevSn() {
        return devSn;
    }

    public void setDevSn(String devSn) {
        this.devSn = devSn == null ? null : devSn.trim();
    }

    public String getDevName() {
        return devName;
    }

    public void setDevName(String devName) {
        this.devName = devName == null ? null : devName.trim();
    }

    public String getDevAddr() {
        return devAddr;
    }

    public void setDevAddr(String devAddr) {
        this.devAddr = devAddr == null ? null : devAddr.trim();
    }

    public Double getDevPrice() {
        return devPrice;
    }

    public void setDevPrice(Double devPrice) {
        this.devPrice = devPrice;
    }

    public String getDevDetail() {
        return devDetail;
    }

    public void setDevDetail(String devDetail) {
        this.devDetail = devDetail == null ? null : devDetail.trim();
    }
}