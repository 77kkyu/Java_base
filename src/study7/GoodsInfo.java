package study7;

public abstract class GoodsInfo {
	
	public int quantity;  // 수량
	abstract public void quantityUp(int n);
	abstract public void quantityDown(int n);
	public void quantityZero() {
		quantity = 0;
	}

}
