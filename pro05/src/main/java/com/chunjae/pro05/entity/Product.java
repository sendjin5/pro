package com.chunjae.pro05.entity;

import lombok.Data;

@Data
public class Product {

    private int pno;
    private int userNo;
    private String UserId;
    private String title;
    private String cate;
    private String content;
    private String startDate;
    private String ingDate;
    private String thumbnail;
    private int price;
    private String addr1;
}
