package kr.co.wonder.auction;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdk.internal.org.jline.utils.Log;

@Service
public class AuctionServiceImpl implements AuctionService{

	@Autowired
	AuctionDAO dao;
	
//	@Override
//	public List<AuctionBoardDTO> list() throws Exception {
//		// TODO Auto-generated method stub
//		return dao.list();
//	}


	@Override
	public AuctionBoardDTO auctionproductdetail(String ab_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.auctionproductdetail(ab_id);
	}
	
	
	@Override
	public int auctionaddproduct(AuctionBoardDTO auctionBoardDTO) throws Exception {
		// TODO Auto-generated method stub

		return dao.auctionaddproduct(auctionBoardDTO);
		
	}


	@Override
	public int auctionproductupdate(AuctionBoardDTO auctionBoardDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.auctionproductupdate(auctionBoardDTO);
	}


	@Override
	public int auctionproductdelete(String ab_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.auctionproductdelete(ab_id);
	}


	@Override
	public List<AuctionBoardDTO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}


	@Override
	public List<AuctionBoardDTO> listAuctionPageMaker(AuctionPageVO pag) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAuctionPageMaker(pag);
	}


	@Override
	public List<AuctionBoardDTO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return dao.listPage(page);
	}


	@Override
	public int contPaging(AuctionPageVO pag) throws Exception {
		// TODO Auto-generated method stub
		return dao.contPaging(pag);
	}

	@Override
	public int pricecheck(String ab_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.pricecheck(ab_id);
	}


	@Override
	public int updatebid(AuctionBid auctionBid) throws Exception {
		// TODO Auto-generated method stub
		return dao.updatebid(auctionBid);
	}


	@Override
	public int auctionbid(AuctionBuyerDTO buyerDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	





	
}
