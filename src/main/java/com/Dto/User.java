package com.Dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class User {
	@Id
	private int id;
	private String name;
	private int age;
	private long mobile;
	private String email;
	private String password;
	@OneToMany(cascade = CascadeType.ALL)
	List<Notes> note;

}
