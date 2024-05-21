package com.Dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@GeneratedValue(strategy = GenerationType.IDENTITY)
 private int id;
 private String tittle;
 private String description;
 @JoinColumn
 @ManyToOne
 private User user;
 
}
