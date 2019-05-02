package zkart.service;

import java.util.ArrayList;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zkart.entity.Category;
import zkart.entity.DealNew;
import zkart.entity.Item;
import zkart.repository.CategoryRepository;
import zkart.repository.DealNewRepository;

@Service
public class DealNewService {
	@Autowired
	private DealNewRepository dealNewRepository;
	
	public ArrayList<DealNew> getZkartDeals(){
		ArrayList<DealNew> categories=new ArrayList<DealNew>();
		Iterable<DealNew> iterable=dealNewRepository.findAll();
		Iterator<DealNew> iterator=iterable.iterator();
		while(iterator.hasNext()) {
			categories.add(iterator.next());
		}
		return categories;
	}
	public DealNew getZkartDealsById(Integer id) {
		return dealNewRepository.findById(id).get();
	}
	
	public boolean addZkartDeals(DealNew dealNew) {
		boolean res=true;
		try {
			dealNewRepository.save(dealNew);
		}catch(Exception e) {
			res=false;
			System.out.println(e);
		}
		return res;
	}
	
	public boolean updateZkartDeals(DealNew dealNew) {
		return dealNewRepository.save(dealNew)!=null;
/*		category.setId(id);
		boolean res=true;
		try {
			categoryRepository.save(category);
		}catch(Exception e) {
			res=false;
			System.out.println(e);
		}
		return res;
	*/}
	
	public boolean deleteZkartDeals(Integer id) {
		boolean res=true;
		try {
			dealNewRepository.deleteById(id);
		}catch(Exception e) {
			res=false;
			System.out.println(e);
		}
		return res;
	}
	
}
