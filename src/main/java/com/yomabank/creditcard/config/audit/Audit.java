package com.yomabank.creditcard.config.audit;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.time.Instant;

/**
 * @author heinhtet_aung
 * @created 12/11/2023
 **/
@Embeddable
@Getter
@Setter
public class Audit {
    @Column(name = "createdBy")
    private String createdBy;
    @Column(name = "createdDate")
    private Instant createdDate;
    @Column(name = "updatedBy")
    private String updatedBy;
    @Column(name = "updatedDate")
    private Instant updatedDate;
}
