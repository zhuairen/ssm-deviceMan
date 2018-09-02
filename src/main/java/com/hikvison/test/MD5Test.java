package com.hikvison.test;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import com.hikvision.utils.MD5utils;

public class MD5Test {

	public static void main(String[] args) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		String a = "admin";
		
		MD5utils md5 = new MD5utils();
		String b = md5.EncoderByMd5(a);
		System.out.println(b);
		
	}

}
