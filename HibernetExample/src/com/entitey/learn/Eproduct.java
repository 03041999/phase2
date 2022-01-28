package com.entitey.learn;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Shop")

public class Eproduct {
	@Id
	@GeneratedValue
	@Column(name="shop_id")
 private int id;

	@Column(name="shop_name")
	private String name;
	
	@Column(name="shop_price")
	private Double price;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

}


	