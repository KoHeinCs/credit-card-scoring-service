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
@Table(name = TableName.PRODUCT)
@Getter
@Setter
@EntityListeners(AuditListener.class)
public class Product implements Serializable {

    @Id
    @GeneratedValue(generator = "custom-id")
    @GenericGenerator(
            name = "custom-id",
            strategy = "com.yomabank.creditcard.config.util.CustomIdGenerator",
            parameters = {@org.hibernate.annotations.Parameter(name = "prefix", value = "YBPRD001")}
    )
    @Column(name = "product_id")
    private String productId;

    @Column(name = "product_type",unique = true)
    private String productType;

    @Column(name = "total_height_score")
    private double totalHeightScore;

    @Column(name = "credit_limit")
    private Integer creditLimit;

    @Column(name = "max_credit_limit_amt")
    private double maxCreditLimitAmt;

    /** mapping  **/

    @OneToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "PRODUCT_CHARACTERISTIC",
            joinColumns = { @JoinColumn(name = "PRODUCTID", referencedColumnName = "product_id") },
            inverseJoinColumns = {@JoinColumn(name = "CHARACTERISTICID", referencedColumnName = "characteristic_id") })
    private List<Characteristic> characteristicList;


    /** for audit log **/
    @Embedded
    Audit audit;

    /** for transaction concurrency control **/
    @Version
    private int version;

}
