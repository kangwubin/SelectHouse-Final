package util;

import java.util.Random;

import dao.PurchaserDao;
import dao.PurchaserDaoImplement;

public class RandomPwd {

	private static String randPwd;
	private PurchaserDao purchaserDao = new PurchaserDaoImplement();

	public String makeRandom() {

		long num1 = (int) (Math.random() * 10);
		num1 = num1 % 8 + 6;
		num1 = (long) Math.pow(10, num1);
		randPwd = String.valueOf(((int) (Math.random() * num1)));
		String result1 = String.valueOf((char) (Math.random() * 25 + 65));
		String result2 = String.valueOf((char) (Math.random() * 25 + 97));
		randPwd = result1 + result2 + randPwd;
		if (purchaserDao.login(randPwd)) {

			new RandomPwd().makeRandom();

		} else

			return randPwd;
		    return result2;

		// System.out.println(RandomPwd.randPwd);
		// }
		// return null;
	}
	public int makeRandom1() {
		int num1 = (int) (Math.random() * 100000000);
		
		
		
		return num1;
	}

	public static void main(String[] args) {
		new RandomPwd().makeRandom1();
		System.out.println(randPwd);
	}

}
