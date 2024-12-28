package com.app.entity.inventory;


import jakarta.persistence.*;

@Entity
@Table(name="item")
public class ItemEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
     private Long id;

    @Column(nullable = false)
    private String name;
    @Column(name = "item_code")
    private String itemCode;
    @Column(name ="measurement_type")
    private String measurementType;
    @Column(name = "item_type")
    private String itemType;

    @Column(name = "HSN_code")
    private long hsnCode;
    @Column(name ="opening_Price" )
    private Double openingPrice;
    @Column(name = "sale_Price")
    private Double salePrice;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getMeasurementType() {
        return measurementType;
    }

    public void setMeasurementType(String measurementType) {
        this.measurementType = measurementType;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public long getHsnCode() {
        return hsnCode;
    }

    public void setHsnCode(long hsnCode) {
        this.hsnCode = hsnCode;
    }

    public Double getOpeningPrice() {
        return openingPrice;
    }

    public void setOpeningPrice(Double openingPrice) {
        this.openingPrice = openingPrice;
    }

    public Double getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(Double salePrice) {
        this.salePrice = salePrice;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}
