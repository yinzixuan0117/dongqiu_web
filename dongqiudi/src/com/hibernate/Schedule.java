package com.hibernate;

/**
 * Schedule entity. @author MyEclipse Persistence Tools
 */

public class Schedule implements java.io.Serializable {

	// Fields

	private ScheduleId id;
	private String opponent;
	private String result;
	private String scores;
	private String site;

	// Constructors

	/** default constructor */
	public Schedule() {
	}

	/** minimal constructor */
	public Schedule(ScheduleId id) {
		this.id = id;
	}

	/** full constructor */
	public Schedule(ScheduleId id, String opponent, String result, String scores, String site) {
		this.id = id;
		this.opponent = opponent;
		this.result = result;
		this.scores = scores;
		this.site = site;
	}

	// Property accessors

	public ScheduleId getId() {
		return this.id;
	}

	public void setId(ScheduleId id) {
		this.id = id;
	}

	public String getOpponent() {
		return this.opponent;
	}

	public void setOpponent(String opponent) {
		this.opponent = opponent;
	}

	public String getResult() {
		return this.result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getScores() {
		return this.scores;
	}

	public void setScores(String scores) {
		this.scores = scores;
	}

	public String getSite() {
		return this.site;
	}

	public void setSite(String site) {
		this.site = site;
	}

}