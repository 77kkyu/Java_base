package study7;

public class CarVolMake implements CarVolService {
	
	
	
	public int volLevel; // 볼륨
	public int tmpVol;   // 볼륨 임시 저장소

	@Override
	public void volUp(int level) {
	   volLevel += level;
	}

	@Override
	public void volDown(int level) {
		volLevel -= level;
		
	}

	@Override
	public void volOff() {
		volLevel = 0;
		
	}

	@Override
	public void volPause() {
		
	
		
		tmpVol = volLevel;
		

		 volLevel = 0;
		
	}

	@Override
	public void volResume() {
		
		 volLevel = tmpVol;
		
	}

}
