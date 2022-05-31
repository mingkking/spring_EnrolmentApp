package kr.co.test.vo;

public class SubjectVO {
	private String id;
	private String name;
	private int credit;
	private String lecturer;
	private int week;
	private int startHour;
	private int endHour;
	
	private String beforeId;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getLecturer() {
		return lecturer;
	}
	public void setLecturer(String lecturer) {
		this.lecturer = lecturer;
	}
	public int getWeek() {
		return week;
	}
	public void setWeek(int week) {
		this.week = week;
	}
	public int getStartHour() {
		return startHour;
	}
	public void setStartHour(int startHour) {
		this.startHour = startHour;
	}
	public int getEndHour() {
		return endHour;
	}
	public void setEndHour(int endHour) {
		this.endHour = endHour;
	}
	public String getBeforeId() {
		return beforeId;
	}
	public void setBeforeId(String beforeId) {
		this.beforeId = beforeId;
	}
	
	
}
