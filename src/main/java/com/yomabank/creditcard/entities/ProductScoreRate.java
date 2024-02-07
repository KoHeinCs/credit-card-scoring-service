package com.yomabank.creditcard.entities;

import com.yomabank.creditcard.common.TableName;
import com.yomabank.creditcard.config.audit.Audit;
import com.yomabank.creditcard.config.audit.AuditListener;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * @author heinhtet_aung
 * @created 1/15/2024
 **/
@Entity
@Table(name = TableName.PRODUCTSCORERATE)
@Getter
@Setter
@EntityListeners(AuditListener.class)
public class ProductScoreRate implements Serializable {

    @Id
    @GeneratedValue(generator = "custom-id")
    @GenericGenerator(
            name = "custom-id",
            strategy = "com.yomabank.creditcard.config.util.CustomIdGenerator",
            parameters = {@org.hibernate.annotations.Parameter(name = "prefix", value = "YBPRDPSR003")}
    )
    @Column(name = "product_score_rate_id")
    private String productScoreRateId;

    @Column(name = "WEIGHTAGE")
    private double weightage;
    @Column(name = "CHARACTER_RANK",precision = 10)
    private double characterRank;
    @Column(name = "SCORE")
    private double score;
    @Column(name = "SCORE_RATE")
    private double scoreRate;

    /** mapping **/

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PRODUCTID", referencedColumnName = "product_id")
    private Product product;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
    @JoinColumn(name = "PRODUCTSCORERATEID", referencedColumnName = "product_score_rate_id")
    private List<ProductScoreRateCharacteristic> productScoreRateCharacteristicList;

    /** for audit log **/
    @Embedded
    Audit audit;

    /** for transaction concurrency control **/
    @Version
    private int version;



}
