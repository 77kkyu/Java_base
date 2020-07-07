package study7;

public class VolMake implements VolService {

	public int volLevel;
	public VolMake() {
		volLevel = 1;
	}
	
	@Override
	public void volUp(int level) {
		
		volLevel += level;
		
	}

	@Override
	public void volDown(int level) {
		
		volLevel -= level;
	}
	
	

}
