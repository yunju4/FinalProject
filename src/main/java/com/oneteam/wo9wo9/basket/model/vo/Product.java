package com.oneteam.wo9wo9.basket.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int basketNum;
	private String pName;
	private int price;
	private int count;

}
