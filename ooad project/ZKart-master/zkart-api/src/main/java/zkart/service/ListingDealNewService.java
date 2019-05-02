package zkart.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zkart.entity.Category;
import zkart.entity.DealNew;
import zkart.entity.Item;
import zkart.entity.ListingDealNew;
import zkart.repository.CategoryRepository;
import zkart.repository.DealNewRepository;
import zkart.repository.ListingDealNewRepository;

@Service
public class ListingDealNewService {
	@Autowired
	private ListingDealNewRepository listingDealNewRepository;
	
	public ArrayList<ListingDealNew> getZkartListingDeals(){
		ArrayList<ListingDealNew> categories=new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> iterable=listingDealNewRepository.findAll();
		Iterator<ListingDealNew> iterator=iterable.iterator();
		while(iterator.hasNext()) {
			categories.add(iterator.next());
		}
		return categories;
	}
	public ListingDealNew getZkartListingDealsById(Integer id) {
		return listingDealNewRepository.findById(id).get();
	}
	
	public boolean addZkartListingDeals(ListingDealNew listingDealNew) {
		boolean res=true;
		try {
			listingDealNewRepository.save(listingDealNew);
		}catch(Exception e) {
			res=false;
			System.out.println(e);
		}
		return res;
	}
	
	public boolean updateZkartListingDeals(ListingDealNew listingDealNew) {
		return listingDealNewRepository.save(listingDealNew)!=null;
}
	
	public boolean deleteZkartListingDeals(Integer id) {
		boolean res=true;
		try {
			listingDealNewRepository.deleteById(id);
		}catch(Exception e) {
			res=false;
			System.out.println(e);
		}
		return res;
	}
////////////////////////////////////////////////////////////////////////////////////////
	public ArrayList<ListingDealNew> getZkartListingDealsByDealId(Integer id){
		ArrayList<ListingDealNew> categories=new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> iterable=listingDealNewRepository.findAll();
		ArrayList<ListingDealNew> tmp = new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> tmpIterable=tmp;
		
		for(ListingDealNew ldn : iterable)
		{
			if(ldn.getDealNew().getId() == id)
			{
				tmp.add(ldn);
			}
		}
		Iterator<ListingDealNew> iterator=tmpIterable.iterator();
		while(iterator.hasNext()) {
			
			categories.add(iterator.next());
		}
		return categories;
	}
	public ArrayList<ListingDealNew> getZkartListingDealsByComboId(String id){
		ArrayList<ListingDealNew> categories=new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> iterable=listingDealNewRepository.findAll();
		ArrayList<ListingDealNew> tmp = new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> tmpIterable=tmp;
		
		for(ListingDealNew ldn : iterable)
		{
			if(ldn.getComboId().equals(id))
			{
				tmp.add(ldn);
			}
		}
		Iterator<ListingDealNew> iterator=tmpIterable.iterator();
		while(iterator.hasNext()) {
			
			categories.add(iterator.next());
		}
		return categories;
	}
	public ArrayList<ListingDealNew> getZkartListingDealsByListingId(Integer id){
		ArrayList<ListingDealNew> categories=new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> iterable=listingDealNewRepository.findAll();
		ArrayList<ListingDealNew> tmp = new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> tmpIterable=tmp;
		
		for(ListingDealNew ldn : iterable)
		{
			if(ldn.getItem().getId() == id)
			{
				tmp.add(ldn);
			}
		}
		Iterator<ListingDealNew> iterator=tmpIterable.iterator();
		while(iterator.hasNext()) {
			
			categories.add(iterator.next());
		}
		return categories;
	}
	public ArrayList<ListingDealNew> getZkartListingDealsToday() throws ParseException 
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String todaydate = dateFormat.format(date);
		date = dateFormat.parse(todaydate);
		Date endDate, startDate;
		
		
	//	ArrayList<ListingDealNew> categories=new ArrayList<ListingDealNew>();
		Iterable<ListingDealNew> deals=listingDealNewRepository.findAll();
		
//		ArrayList<ListingDealNew> deals = listingDealNewRepository.findAll();
		ArrayList<ListingDealNew> todayDeals = new ArrayList<ListingDealNew>();
		for (ListingDealNew deal : deals) {
			endDate = dateFormat.parse(deal.getEndDate());
			startDate = dateFormat.parse(deal.getStartDate());
			if (endDate.before(date)) {
				listingDealNewRepository.delete(deal);
		
			} else if (startDate.after(date)) {
				// System.out.println(startDate+" "+endDate);
			} else {
				todayDeals.add(deal);
			}
		}
		return todayDeals;
	}
	
}
