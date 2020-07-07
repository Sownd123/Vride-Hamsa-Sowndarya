package net.codejava.rider;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Rider {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long RiderId;
	
	private String RiderName;
	private String RiderEmail;
	private String RiderAddress;

	
	protected Rider() {
		
	}
	public Long getRiderId() {
		return RiderId;
	}
	public void setRiderId(Long riderId) {
		RiderId = riderId;
	}
	public String getRiderName() {
		return RiderName;
	}
	public void setRiderName(String riderName) {
		RiderName = riderName;
	}
	public String getRiderEmail() {
		return RiderEmail;
	}
	public void setRiderEmail(String riderEmail) {
		RiderEmail = riderEmail;
	}
	public String getRiderAddress() {
		return RiderAddress;
	}
	public void setRiderAddress(String riderAddress) {
		RiderAddress = riderAddress;
	}
	
	

}
