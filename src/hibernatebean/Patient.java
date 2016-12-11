package hibernatebean;

/*Patient bean to store its attributes*/

public class Patient {
	
	private long id;
	private String firstName;
	private String lastName;
	private String dob;
	private String gender;
	private String phoneNumber;
	private String freeTextInfo;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getFreeTextInfo() {
		return freeTextInfo;
	}
	public void setFreeTextInfo(String freeTextInfo) {
		this.freeTextInfo = freeTextInfo;
	}
	
	
}
