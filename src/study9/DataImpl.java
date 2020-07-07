package study9;

public class DataImpl implements DataService {

	String value = "";
	
	@Override
	public void dataInput(int value) {
		this.value += ""+value; // 형변환 
		
		
		
	}

	@Override
	public String dataOutput() {
		
		return value;
	}

	
	
}
