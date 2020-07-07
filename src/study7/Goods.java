package study7;

public class Goods extends GoodsInfo {
	
	

	public static void main(String[] args) {
		
		Goods g = new Goods();
		
		System.out.println("상품 잔량: "+g.quantity);
		g.quantityUp(100);
		System.out.println("상품 잔량: "+g.quantity);
		g.quantityDown(50);
		System.out.println("상품 잔량: "+g.quantity);
		
		

	}

	@Override
	public void quantityUp(int n) {
		quantity += n;
		
	}

	@Override
	public void quantityDown(int n) {
		quantity -= n;
		if(quantity <0) {
			quantityZero();
		}
		
		
	}

}
