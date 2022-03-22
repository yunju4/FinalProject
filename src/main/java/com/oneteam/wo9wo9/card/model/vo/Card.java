package com.oneteam.wo9wo9.card.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Card {
	private int cNum;//	C_NUM	NUMBER
	private String cCom;//	C_COM	VARCHAR2(20 BYTE)
	private String cardNum;//	CARD_NUM	VARCHAR2(19 BYTE)
	private String cardPwd;//	CARD_PWD	VARCHAR2(4 BYTE)
	private int memberNum;//	MEMBER_NUM	NUMBER
}
