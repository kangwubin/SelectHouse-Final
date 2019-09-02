package util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MyUTF {
	//封装成工具类
	   public static String getNewString(String str) throws UnsupportedEncodingException
	    {
	       return new String(str.getBytes("ISO-8859-1"),"UTF-8");
	    }
	   
	   public static String toMd5(String info) {

		    byte[] secretByte;
		    try {
		        secretByte = MessageDigest.getInstance("md5")
		                .digest(info.getBytes());
		    } catch (NoSuchAlgorithmException e) {
		        throw new RuntimeException("找不到md5算法");
		    }
		    StringBuilder md5Code = new StringBuilder(new BigInteger(1, secretByte).toString(16));
		    for (int i = 0; i < 32 - md5Code.length(); i++) {
		        md5Code.insert(0, "0");
		    }
		    return md5Code.toString();
		}

}
