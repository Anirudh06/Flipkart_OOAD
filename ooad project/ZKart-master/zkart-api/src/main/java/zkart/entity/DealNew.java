

package zkart.entity;

import java.util.ArrayList;
import java.util.HashSet;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class DealNew 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String dealName;
	private String description;
	private Integer days;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDealName() {
		return dealName;
	}
	public void setDealName(String dealName) {
		this.dealName = dealName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getDays() {
		return days;
	}
	public void setDays(Integer days) {
		this.days = days;
	}
	@Override
	public String toString() {
		return "ListingDeals [id=" + id + ", dealName=" + dealName + ", description=" + description + ", days=" + days
				+ "]";
	}
	public DealNew(Integer id, String dealName, String description, Integer days) {
		super();
		this.id = id;
		this.dealName = dealName;
		this.description = description;
		this.days = days;
	}
	public DealNew()
	{}
	

}
