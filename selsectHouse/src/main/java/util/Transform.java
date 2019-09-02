package util;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.sun.tracing.dtrace.NameAttributes;

/**
 * 转化工具类
 * @author 
 *
 */
public class Transform {

	/**
	 * 将字符串转化为日期
	 */
	public static Date StringToDate(String str) {
		Date date = null;
		 SimpleDateFormat df=
				 new SimpleDateFormat("yyyy-MM-dd");
		 try {
			date = new Date(df.parse(str).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
}
