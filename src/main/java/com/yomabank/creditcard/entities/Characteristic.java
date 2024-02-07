package com.yomabank.creditcard.entities;

import com.yomabank.creditcard.common.SegmentType;
import com.yomabank.creditcard.common.TableName;
import com.yomabank.creditcard.config.audit.Audit;
import com.yomabank.creditcard.config.audit.AuditListener;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

/**
 * @author heinhtet_aung
 * @created 1/15/2024
 **/
@Entity
@Table(name = TableName.CHARACTERISTIC)
@Getter
@Setter
@EntityListeners(AuditListener.class)
public class Characteristic implements Serializable {

    @Id
    @GeneratedValue(generator = "custom-id")
    @GenericGenerator(
            name = "custom-id",
            strategy = "com.yomabank.creditcard.config.util.CustomIdGenerator",
            parameters = {@org.hibernate.annotations.Parameter(name = "prefix", value = "YBCHR002")}
    )
    @Column(name = "characteristic_id")
    private String characteristicId;

    private String value;
    @Column(unique = true)
    private String name;

    private String description;

    @Enumerated(value = EnumType.STRING)
    private SegmentType segmentType;

    /** for audit log **/
    @Embedded
    Audit audit;

    /** for transaction concurrency control **/
    @Version
    private int version;
}
