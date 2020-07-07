package File_I_O_study10_11;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Foreach_Test {

	public static void main(String[] args) throws IOException {
		
		String array[] = {"10","20","30","40","50"};
		for(String number : array) {
			System.out.print(number);
		}
		System.out.println();
		int array1[] = {10,20,30,40,50};
		for(int number1 : array1) {
			System.out.print(number1);
		}

	}

}
