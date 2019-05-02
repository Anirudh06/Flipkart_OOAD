package zkart.controller;

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
import zkart.service.CategoryService;
import zkart.service.DealNewService;

@CrossOrigin( origins = "*" )
@RestController
@RequestMapping(path="/dealsNew")
public class DealNewController {
	
	@Autowired
	private DealNewService dealNewService;

	@RequestMapping()
	public ResponseEntity<ArrayList<DealNew>> getZkartDealsNew(){
		return new ResponseEntity<>(dealNewService.getZkartDeals(),HttpStatus.OK);
	}
	
	@RequestMapping("/{id}")
	public ResponseEntity<DealNew> getZkartDealsNewById(@PathVariable("id") int id){
		return new ResponseEntity<>(dealNewService.getZkartDealsById(id),HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/create")
	public ResponseEntity<String> addZkartDealsNew(@RequestBody DealNew dealNew){
		System.out.println("hello");
		if(dealNewService.addZkartDeals(dealNew)==true) {
			return new ResponseEntity<>("dealnew added",HttpStatus.OK);
		}else {
			return new ResponseEntity<>("error",HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(method = RequestMethod.PUT, value = "/update") //surrogate id bhejni padegi
	public ResponseEntity<String> updateZkartDealsNew(@RequestBody DealNew dealNew){
		if(dealNewService.updateZkartDeals(dealNew)==true) {
			return new ResponseEntity<>("dealNew updated",HttpStatus.OK);
		}else {
			return new ResponseEntity<>("error",HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(method = RequestMethod.DELETE, value = "/delete/{id}")
	public ResponseEntity<String> deleteZkartdealNew(@PathVariable("id") Integer id){
		if(dealNewService.deleteZkartDeals(id)==true) {
			return new ResponseEntity<>("dealNew deleted",HttpStatus.OK);
		}else {
			return new ResponseEntity<>("error",HttpStatus.BAD_REQUEST);
		}
	}


}
