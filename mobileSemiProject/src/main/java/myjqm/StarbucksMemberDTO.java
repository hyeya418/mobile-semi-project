package myjqm;

import java.sql.Date;

//DTO(Data Transfer Object):데이터 전송, 저장
public class StarbucksMemberDTO {
	//멤버변수 (DB의 컬럼명과 동일한 변수명으로 선언)
	private String userid;
	private String passwd;
	private String name;
	private String email;
	private String tel;
	private String birth;
	private String address1;
	private String address2;
	private Date join_date;
	//getter, setter, 생성자(기본,매개), toString()
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public StarbucksMemberDTO() {
	}
	public StarbucksMemberDTO(String userid, String passwd, String name, String email, String tel, String birth,
			String address1, String address2, Date join_date) {
		this.userid = userid;
		this.passwd = passwd;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.birth = birth;
		this.address1 = address1;
		this.address2 = address2;
		this.join_date = join_date;
	}
	@Override
	public String toString() {
		return "StarbucksMemberDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + ", email=" + email
				+ ", tel=" + tel + ", birth=" + birth + ", address1=" + address1 + ", address2=" + address2
				+ ", join_date=" + join_date + "]";
	}
}