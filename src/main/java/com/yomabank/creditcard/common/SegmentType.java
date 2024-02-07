package com.yomabank.creditcard.common;

/**
 * @author heinhtet_aung
 * @created 1/15/2024
 **/
public enum SegmentType {

    FROM_TO("FROM_TO"), FIXED("FIXED");

    private String label;
    SegmentType(String label) {
        this.label = label;
    }
    public String getLabel() {
        return label;
    }
}
