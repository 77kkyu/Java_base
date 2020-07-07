package Test11;

public class AAAA {

	public String name;
	public int skill;
	
	public AAAA(String name, int skill) {
		this.name = name;
		this.skill = skill;
	}

public void speed(Car car) {
		
		if(this.skill == car.power) {
			
			car.power += 100;
			
		}
		
	}
}
