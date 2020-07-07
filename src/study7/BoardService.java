package study7;

import java.util.List;

public interface BoardService {
	
	// 저장
	public void boardInsert(BoardVO vo);
	
	// 목록
	public List<?> boardList(BoardVO vo);
	
	// 상세보기
	public BoardVO boardDetail(int unq);
	
	// 수정
	public int boardModify(BoardVO vo);
	
	// 삭제
	public int boardDelete(int unq);
	
	
	

}
