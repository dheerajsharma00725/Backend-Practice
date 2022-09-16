package com.util;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

@Component
public class Utility {

	public static String generateUserName(String fname, String mobile) {

		StringBuilder sb = new StringBuilder();
		sb.append(fname);
		sb.append(mobile.substring(6));
		return sb.toString();
	}
	
	public static String generatePwd(String fname, String lname, String mobile, String dob) {
		StringBuilder builder = new StringBuilder();
		char p1 = lname.charAt(0); // First Character
		char p2 = fname.charAt(fname.length() - 1); // Second Character
		/*
		 * Getting Characters from Odd Places
		 */
		char[] p3 = new char[5];
		int odd = 0;
		if (mobile.length() > 0) {
			for (int i = 0; i < mobile.length(); i++) {
				if (i % 2 == 0) {
					p3[odd] = mobile.charAt(i);
					odd++;
				}
			}
		}
		/*
		 * Getting characters from ID Proof
		 */
//		String str1 = idproof.toUpperCase();
//		char p[] = str1.toCharArray();
//		char[] p4 = new char[4];
//		int vowels = 0, sum = 0, p5 = 0;
//		if (idproof.length() > 0) {
//			for (int i = 0; i < str1.length(); i++) {
//				char ch = p[i];
//				if (ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U') {
//					p4[vowels] = ch;
//					vowels++;
//				}
//				if (Character.isDigit(ch)) {
//					int a = Integer.parseInt(String.valueOf(p[i]));
//					sum += a;
//				}
//			}
//			while (sum > 0) {
//				p5 += sum % 10;
//				sum /= 10;
//			}
//		}
		/*
		 * Getting Characters from DOB
		 */
		int p7 = 0,sum=0;
		Date date = Date.valueOf(dob);
		SimpleDateFormat ft = 
			      new SimpleDateFormat ("ddMMYYYY");
		String dob1 = ft.format(date);
		char p6[] = dob1.toCharArray();
		for (int i = 0; i < dob1.length(); i++) {
			char ch = dob1.charAt(i);
			if (Character.isDigit(ch)) {
				int a = Integer.parseInt(String.valueOf(p6[i]));
				sum += a;
			}
		}
		while (sum > 0) {
			p7 += sum % 10;
			sum /= 10;
		}
		builder.append(p1);
		builder.append(p2);
		builder.append(p3);
//		builder.append(p4);
//		builder.append(p5);
		builder.append(p7);

		return builder.toString();
	}

}
