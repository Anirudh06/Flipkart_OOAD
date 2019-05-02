package zkart.controller;

import java.text.ParseException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import zkart.entity.Category;
import zkart.entity.DealNew;
import zkart.entity.Item;
import zkart.entity.ListingDealNew;
import zkart.service.CategoryService;
import zkart.service.DealNewService;
import zkart.service.ListingDealNewService;

@CrossOrigin( origins = "*" )
@RestController
@RequestMapping(path="/listingDealsNew")
public class ListingDealNewController {
	
	@Autowired
	private ListingDealNewService listingDealNewService;

	@RequestMapping()
	public ResponseEntity<ArrayList<ListingDealNew>> getZkartDealsNew(){
		return new ResponseEntity<>(listingDealNewService.getZkartListingDeals(),HttpStatus.OK);
	}
	
	@RequestMapping("/{id}")
	public ResponseEntity<ListingDealNew> getZkartDealsNewById(@PathVariable("id") int id){
		return new ResponseEntity<>(listingDealNewService.getZkartListingDealsById(id),HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/create")
	public ResponseEntity<String> addZkartDealsNew(@RequestBody ListingDealNew listingDealNew){
		System.out.println("hello");
		if(listingDealNewService.addZkartListingDeals(listingDealNew)==true) {
			return new ResponseEntity<>("listingdealnew added",HttpStatus.OK);
		}else {
			return new ResponseEntity<>("error",HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(method = RequestMethod.PUT, value = "/update/{id}")
	public ResponseEntity<String> updateZkartDealsNew(@PathVariable("id") Integer id,@RequestBody ListingDealNew listingDealNew){
		listingDealNew.setId(id);
		if(listingDealNewService.updateZkartListingDeals(listingDealNew)==true) {
			return new ResponseEntity<>("listingdealNew updated",HttpStatus.OK);
		}else {
			return new ResponseEntity<>("error",HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(method = RequestMethod.DELETE, value = "/delete/{id}")
	public ResponseEntity<String> deleteZkartdealNew(@PathVariable("id") Integer id){
		if(listingDealNewService.deleteZkartListingDeals(id)==true) {
			return new ResponseEntity<>("listingdealNew deleted",HttpStatus.OK);
		}else {
			return new ResponseEntity<>("error",HttpStatus.BAD_REQUEST);
		}
	}

	@RequestMapping("/listing/{id}")//item table
	public ResponseEntity<ArrayList<ListingDealNew>> getZkartDealsNewByListingId(@PathVariable("id")Integer id){
		return new ResponseEntity<>(listingDealNewService.getZkartListingDealsByListingId(id),HttpStatus.OK);
	}
	@RequestMapping("/deal/{id}")//dealNew table
	public ResponseEntity<ArrayList<ListingDealNew>> getZkartDealsNewByDealId(@PathVariable("id")Integer id){
		return new ResponseEntity<>(listingDealNewService.getZkartListingDealsByDealId(id),HttpStatus.OK);
	}
	@RequestMapping("/combo/{id}")
	public ResponseEntity<ArrayList<ListingDealNew>> getZkartDealsNewByComboId(@PathVariable("id")String id){
		return new ResponseEntity<>(listingDealNewService.getZkartListingDealsByComboId(id),HttpStatus.OK);
	}
	@RequestMapping("/today")
	public ResponseEntity<ArrayList<ListingDealNew>> getZkartDealsNewToday() throws ParseException{
		return new ResponseEntity<>(listingDealNewService.getZkartListingDealsToday(),HttpStatus.OK);
	}

	

}
