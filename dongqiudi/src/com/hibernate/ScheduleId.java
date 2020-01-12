package com.hibernate;

/**
 * ScheduleId entity. @author MyEclipse Persistence Tools
 */

public class ScheduleId implements java.io.Serializable {

	// Fields

	private String dateTime;
	private String teamName;

	// Constructors

	/** default constructor */
	public ScheduleId() {
	}

	/** full constructor */
	public ScheduleId(String dateTime, String teamName) {
		this.dateTime = dateTime;
		this.teamName = teamName;
	}

	// Property accessors

	public String getDateTime() {
		return this.dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getTeamName() {
		return this.teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ScheduleId))
			return false;
		ScheduleId castOther = (ScheduleId) other;

		return ((this.getDateTime() == castOther.getDateTime()) || (this.getDateTime() != null
				&& castOther.getDateTime() != null && this.getDateTime().equals(castOther.getDateTime())))
				&& ((this.getTeamName() == castOther.getTeamName()) || (this.getTeamName() != null
						&& castOther.getTeamName() != null && this.getTeamName().equals(castOther.getTeamName())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getDateTime() == null ? 0 : this.getDateTime().hashCode());
		result = 37 * result + (getTeamName() == null ? 0 : this.getTeamName().hashCode());
		return result;
	}

}