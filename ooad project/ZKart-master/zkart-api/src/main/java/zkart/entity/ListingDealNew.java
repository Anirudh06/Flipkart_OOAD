

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
public class ListingDealNew 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String comboId;
	private String startDate;
	private String endDate;
	private String dealName;
	private String comboDescription;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumns({
        @JoinColumn(name="LISTINGID", referencedColumnName="ID")
    })
	private Item item;
	
	@ManyToOne(fetch = FetchType.EAGER)
    @JoinColumns({
        @JoinColumn(name="DEALID", referencedColumnName="ID")
    })
	private DealNew dealNew;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getComboId() {
		return comboId;
	}

	public void setComboId(String comboId) {
		this.comboId = comboId;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endtDate) {
		this.endDate = endtDate;
	}

	public String getDealName() {
		return dealName;
	}

	public void setDealName(String dealName) {
		this.dealName = dealName;
	}

	public String getComboDescription() {
		return comboDescription;
	}

	public void setComboDescription(String comboDescription) {
		this.comboDescription = comboDescription;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public DealNew getDealNew() {
		return dealNew;
	}

	public void setDealNew(DealNew dealNew) {
		this.dealNew = dealNew;
	}

	public ListingDealNew(Integer id, String comboId, String startDate, String endDate, String dealName,
			String comboDescription, Item item, DealNew dealNew) {
		super();
		this.id = id;
		this.comboId = comboId;
		this.startDate = startDate;
		this.endDate = endDate;
		this.dealName = dealName;
		this.comboDescription = comboDescription;
		this.item = item;
		this.dealNew = dealNew;
	}

	@Override
	public String toString() {
		return "ListingDealNew [id=" + id + ", comboId=" + comboId + ", startDate=" + startDate + ", endDate="
				+ endDate + ", dealName=" + dealName + ", comboDescription=" + comboDescription + ", item=" + item
				+ ", dealNew=" + dealNew + "]";
	}	
		public ListingDealNew()
		{
			
		}

}
