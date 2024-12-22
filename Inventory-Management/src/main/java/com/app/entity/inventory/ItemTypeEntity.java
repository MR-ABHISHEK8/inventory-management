package com.app.entity.inventory;

import jakarta.persistence.*;


@Entity
@Table(name = "item_type")

public class ItemTypeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String prefix;
    private String suffix;
    @Column(name = "`separator`")
    private String separator;
    @Column(name = "zero_padding")
    private Long zeroPadding;
    @Column(name = "start_no")
    private Long startNo;
    @Column(name = "last_no")
    private Long lastNo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    public String getSeparator() {
        return separator;
    }

    public void setSeparator(String separator) {
        this.separator = separator;
    }

    public Long getZeroPadding() {
        return zeroPadding;
    }

    public void setZeroPadding(Long zeroPadding) {
        this.zeroPadding = zeroPadding;
    }

    public Long getStartNo() {
        return startNo;
    }

    public void setStartNo(Long startNo) {
        this.startNo = startNo;
    }

    public Long getLastNo() {
        return lastNo;
    }

    public void setLastNo(Long lastNo) {
        this.lastNo = lastNo;
    }
}
