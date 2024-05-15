package com.Dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Entity
public class Notes {
@Id
 private int id;
 private String tittle;
 private String description;
 @JoinColumn
 @ManyToOne
 private User user;
 
}
