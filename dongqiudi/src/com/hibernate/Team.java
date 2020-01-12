package com.hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Team entity. @author MyEclipse Persistence Tools
 */

public class Team implements java.io.Serializable {

	// Fields

	private String teamName;
	private String zone;
	private String coach;
	private String arena;
	private String ppg;
	private String apg;
	private String rpg;
	private String spg;
	private String bpg;
	private String afg;
	private String aft;
	private String atp;
	private Integer wins;
	private Set schedules = new HashSet(0);

	// Constructors

	/** default constructor */
	public Team() {
	}

	/** full constructor */
	public Team(String zone, String coach, String arena, String ppg, String apg, String rpg, String spg, String bpg,
			String afg, String aft, String atp, Integer wins, Set schedules) {
		this.zone = zone;
		this.coach = coach;
		this.arena = arena;
		this.ppg = ppg;
		this.apg = apg;
		this.rpg = rpg;
		this.spg = spg;
		this.bpg = bpg;
		this.afg = afg;
		this.aft = aft;
		this.atp = atp;
		this.wins = wins;
		this.schedules = schedules;
	}

	// Property accessors

	public String getTeamName() {
		return this.teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getZone() {
		return this.zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getCoach() {
		return this.coach;
	}

	public void setCoach(String coach) {
		this.coach = coach;
	}

	public String getArena() {
		return this.arena;
	}

	public void setArena(String arena) {
		this.arena = arena;
	}

	public String getPpg() {
		return this.ppg;
	}

	public void setPpg(String ppg) {
		this.ppg = ppg;
	}

	public String getApg() {
		return this.apg;
	}

	public void setApg(String apg) {
		this.apg = apg;
	}

	public String getRpg() {
		return this.rpg;
	}

	public void setRpg(String rpg) {
		this.rpg = rpg;
	}

	public String getSpg() {
		return this.spg;
	}

	public void setSpg(String spg) {
		this.spg = spg;
	}

	public String getBpg() {
		return this.bpg;
	}

	public void setBpg(String bpg) {
		this.bpg = bpg;
	}

	public String getAfg() {
		return this.afg;
	}

	public void setAfg(String afg) {
		this.afg = afg;
	}

	public String getAft() {
		return this.aft;
	}

	public void setAft(String aft) {
		this.aft = aft;
	}

	public String getAtp() {
		return this.atp;
	}

	public void setAtp(String atp) {
		this.atp = atp;
	}

	public Integer getWins() {
		return this.wins;
	}

	public void setWins(Integer wins) {
		this.wins = wins;
	}

	public Set getSchedules() {
		return this.schedules;
	}

	public void setSchedules(Set schedules) {
		this.schedules = schedules;
	}

}