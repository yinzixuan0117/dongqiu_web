package com.hibernate;

/**
 * PlayerId entity. @author MyEclipse Persistence Tools
 */

public class PlayerId implements java.io.Serializable {

	// Fields

	private String season;
	private String number;
	private String teamName;

	// Constructors

	/** default constructor */
	public PlayerId() {
	}

	/** full constructor */
	public PlayerId(String season, String number, String teamName) {
		this.season = season;
		this.number = number;
		this.teamName = teamName;
	}

	// Property accessors

	public String getSeason() {
		return this.season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getNumber() {
		return this.number;
	}

	public void setNumber(String number) {
		this.number = number;
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
		if (!(other instanceof PlayerId))
			return false;
		PlayerId castOther = (PlayerId) other;

		return ((this.getSeason() == castOther.getSeason()) || (this.getSeason() != null
				&& castOther.getSeason() != null && this.getSeason().equals(castOther.getSeason())))
				&& ((this.getNumber() == castOther.getNumber()) || (this.getNumber() != null
						&& castOther.getNumber() != null && this.getNumber().equals(castOther.getNumber())))
				&& ((this.getTeamName() == castOther.getTeamName()) || (this.getTeamName() != null
						&& castOther.getTeamName() != null && this.getTeamName().equals(castOther.getTeamName())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getSeason() == null ? 0 : this.getSeason().hashCode());
		result = 37 * result + (getNumber() == null ? 0 : this.getNumber().hashCode());
		result = 37 * result + (getTeamName() == null ? 0 : this.getTeamName().hashCode());
		return result;
	}

}