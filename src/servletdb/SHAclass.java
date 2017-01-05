package servletdb;

import java.security.NoSuchAlgorithmException;
import java.security.MessageDigest;
//import java.util.HashMap;
//import java.util.Map;

public class SHAclass {

	final String SALT = "blah";

	public void signup(String username, String password) {
		String saltedPassword = SALT + password;
		String hashedPassword = generateHash(saltedPassword);
		System.out.println(hashedPassword);
		// DB.put(username, hashedPassword);
	}

	public Boolean login(String username, String password) {
		Boolean isAuthenticated = false;

		String saltedPassword = SALT + password;
		String hashedPassword = generateHash(saltedPassword);
		System.out.println("\n" + hashedPassword);
		// String storedPasswordHash = DB.get(username);
		/*
		 * if(hashedPassword.equals(storedPasswordHash)){ isAuthenticated =
		 * true; }else{ isAuthenticated = false; }
		 */
		return isAuthenticated;

	}

	public static String generateHash(String input) {
		StringBuilder hash = new StringBuilder();

		try {
			MessageDigest sha = MessageDigest.getInstance("SHA-1");
			byte[] hashedBytes = sha.digest(input.getBytes());
			char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
					'a', 'b', 'c', 'd', 'e', 'f' }; // HEX STRING LITERALS
			for (int idx = 0; idx < hashedBytes.length; idx++) {
				byte b = hashedBytes[idx];
				hash.append(digits[(b & 0xf0) >> 4]);
				hash.append(digits[b & 0x0f]);
			}
		} catch (NoSuchAlgorithmException e) {

		}

		return hash.toString();
	}
/*	
  public static void main(String args[]){
	  String s = "dummy";
	  String S2 = "dummy ";
	  System.out.println(generateHash(s));
	  System.out.println(generateHash(S2));
  }
 */	
}
