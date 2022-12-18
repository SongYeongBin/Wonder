package kr.co.wonder.auction;

import java.util.List;
import java.util.Map;

public interface AuctionDAO {

	//경매 목록 총 상품 갯수 메소드
	//경매 상품 상세보기 메소드
	public AuctionBoardDTO auctionproductdetail(String ab_id) throws Exception;
	public AuctionBoardDTO auctionproductdetail2(String ab_id) throws Exception;
	//경매 상품 등록 메소드
	public int auctionaddproduct(AuctionBoardDTO auctionBoardDTO) throws Exception;
	//경매 상품 수정 메소드
	public int auctionproductupdate(AuctionBoardDTO auctionBoardDTO) throws Exception;
	//경매 상품 삭제 메소드
	public int auctionproductdelete(String ab_id) throws Exception;
	//경매 상품 입찰 메소드
	public int pricecheck(String ab_id) throws Exception;
	
	public int updatebid(AuctionBid auctionBid) throws Exception;
	//경매 상품 삭제 메소드
	
	//경매 상품 신고하기 메소드
	
	//경매 페이징1
	public List<AuctionBoardDTO> listAll() throws Exception;
	public List<AuctionBoardDTO> listPage(int page) throws Exception;
	public List<AuctionBoardDTO> listAuctionPageMaker(AuctionPageVO pag) throws Exception;
	//경매 totalCount
	public int contPaging(AuctionPageVO pag) throws Exception;
	//경매 응찰 
	public int auctionbid(AuctionBuyerDTO buyerDTO) throws Exception;
	
	
	
}

