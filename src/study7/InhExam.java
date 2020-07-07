package study7;

//상속의 상속인 경우 예!!!!!!!!!!!!!!!!

class Flower{
	public String flowername;
	public int cost;
	protected void printAttributes() {
		System.out.println("flowername= "+flowername+"\t cost= "+cost);
	}
}

class Rose extends Flower{
	public Rose(){
		flowername = "장미";
		cost = 100;
	}
}

class Tulip extends Rose{
	public Tulip(){
		flowername = "튤립";
		cost = 200;
	}
}

public class InhExam {

	public static void main(String[] args) {
		
		Flower f = new Flower();
		Rose r = new Rose();
		Tulip t = new Tulip();
		
		f.printAttributes();
		r.printAttributes();
		t.printAttributes();
		

	}

}
