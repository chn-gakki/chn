package com.crm.info;

import java.sql.Timestamp;

/**
 * PersonalCalendar entity. @author MyEclipse Persistence Tools
 */

public class PersonalCalendar implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private String description;
	private Timestamp starttime;
	private Timestamp endtime;
	private Boolean isalldayevent;
	private String title;
	private Timestamp start;
	private Timestamp end;
	private String backgroundColor;
	private String allDay;
	private String url;

	// Constructors

	/** default constructor */
	public PersonalCalendar() {
	}

	/** full constructor */
	public PersonalCalendar(HrEmployee hrEmployee, String description,
			Timestamp starttime, Timestamp endtime, Boolean isalldayevent,
			String title, Timestamp start, Timestamp end,
			String backgroundColor, String allDay, String url) {
		this.hrEmployee = hrEmployee;
		this.description = description;
		this.starttime = starttime;
		this.endtime = endtime;
		this.isalldayevent = isalldayevent;
		this.title = title;
		this.start = start;
		this.end = end;
		this.backgroundColor = backgroundColor;
		this.allDay = allDay;
		this.url = url;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public HrEmployee getHrEmployee() {
		return this.hrEmployee;
	}

	public void setHrEmployee(HrEmployee hrEmployee) {
		this.hrEmployee = hrEmployee;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Timestamp getStarttime() {
		return this.starttime;
	}

	public void setStarttime(Timestamp starttime) {
		this.starttime = starttime;
	}

	public Timestamp getEndtime() {
		return this.endtime;
	}

	public void setEndtime(Timestamp endtime) {
		this.endtime = endtime;
	}

	public Boolean getIsalldayevent() {
		return this.isalldayevent;
	}

	public void setIsalldayevent(Boolean isalldayevent) {
		this.isalldayevent = isalldayevent;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getStart() {
		return this.start;
	}

	public void setStart(Timestamp start) {
		this.start = start;
	}

	public Timestamp getEnd() {
		return this.end;
	}

	public void setEnd(Timestamp end) {
		this.end = end;
	}

	public String getBackgroundColor() {
		return this.backgroundColor;
	}

	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}

	public String getAllDay() {
		return this.allDay;
	}

	public void setAllDay(String allDay) {
		this.allDay = allDay;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}