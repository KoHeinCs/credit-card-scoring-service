package com.yomabank.creditcard.entities;

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
@Table(name = TableName.PRODUCTSCORERATECHARACTERISTIC)
@Getter
@Setter
@EntityListeners(AuditListener.class)
public class ProductScoreRateCharacteristic implements Serializable {

    @Id
    @GeneratedValue(generator = "custom-id")
    @GenericGenerator(
            name = "custom-id",
            strategy = "com.yomabank.creditcard.config.util.CustomIdGenerator",
            parameters = {@org.hibernate.annotations.Parameter(name = "prefix", value = "YBPRDPSRCHR004")}
    )
    @Column(name = "product_score_rate_characteristic_id")
    private String productScoreRateCharacteristicId;

    @Column(name = "FROM_VALUE")
    private double from;
    @Column(name = "TO_VALUE")
    private double to;
    @Column(name = "VALUE")
    private String value;

    /** mapping **/
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CHARACTERISTICID", referencedColumnName = "characteristic_id")
    private Characteristic characteristic;



    /** for audit log **/
    @Embedded
    Audit audit;

    /** for transaction concurrency control **/
    @Version
    private int version;
}
