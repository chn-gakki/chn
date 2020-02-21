package com.crm.info;

import java.sql.Timestamp;

/**
 * PersonalNotes entity. @author MyEclipse Persistence Tools
 */

public class PersonalNotes implements java.io.Serializable {

	// Fields

	private Integer id;
	private HrEmployee hrEmployee;
	private String empName;
	private String noteContent;
	private String noteColor;
	private String xyz;
	private Timestamp noteTime;

	// Constructors

	/** default constructor */
	public PersonalNotes() {
	}

	/** full constructor */
	public PersonalNotes(HrEmployee hrEmployee, String empName,
			String noteContent, String noteColor, String xyz, Timestamp noteTime) {
		this.hrEmployee = hrEmployee;
		this.empName = empName;
		this.noteContent = noteContent;
		this.noteColor = noteColor;
		this.xyz = xyz;
		this.noteTime = noteTime;
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

	public String getEmpName() {
		return this.empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getNoteContent() {
		return this.noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public String getNoteColor() {
		return this.noteColor;
	}

	public void setNoteColor(String noteColor) {
		this.noteColor = noteColor;
	}

	public String getXyz() {
		return this.xyz;
	}

	public void setXyz(String xyz) {
		this.xyz = xyz;
	}

	public Timestamp getNoteTime() {
		return this.noteTime;
	}

	public void setNoteTime(Timestamp noteTime) {
		this.noteTime = noteTime;
	}

}