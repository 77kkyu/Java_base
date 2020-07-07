package study9;

public class DataController {

	public static void main(String[] args) {
		
		DataImpl d = new DataImpl();
		d.dataInput(10);
		d.dataInput(300);
		System.out.println(d.dataOutput());

		char mm= 'a';
		int code = (int) mm;
		System.out.println(code);
	}

}
