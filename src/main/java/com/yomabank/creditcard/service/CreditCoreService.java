package com.yomabank.creditcard.service;

import com.yomabank.creditcard.common.SegmentType;
import com.yomabank.creditscorecard.model.Characteristic;
import com.yomabank.creditscorecard.model.ProductScoreRateReq;
import com.yomabank.creditscorecard.model.ProductScoreRateResp;
import com.yomabank.creditscorecard.model.ScoreDetail;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author heinhtet_aung
 * @created 1/17/2024
 **/
@Service
@RequiredArgsConstructor

public class CreditCoreService implements ICreditCoreService {

    private final EntityManager entityManager;

    @Override
    public ProductScoreRateResp calculateProductScoreRate(ProductScoreRateReq request) {

        List<ScoreDetail> scoreDetailList = new ArrayList<>();

        for (Characteristic characteristic : request.getCharacteristicList()) {

            ScoreDetail.Builder scoreDetail = ScoreDetail.newBuilder();
            scoreDetail.setName(characteristic.getName());
            scoreDetail.setDescription(characteristic.getDescription());
            scoreDetail.setValue(characteristic.getValue());

            StringBuffer queryString = new StringBuffer();
            queryString.append("SELECT csr.SCORE , csr.score_rate FROM product_score_rate csr ");
            queryString.append("LEFT JOIN product_score_rate_characteristic csrc on csr.product_score_rate_id = csrc.productscorerateid ");
            queryString.append("LEFT JOIN characteristic chr on csrc.characteristicid = chr.characteristic_id ");
            queryString.append("WHERE csr.productid = :productid ");
            queryString.append("AND chr.name = :name ");

            if (characteristic.getSegmentType().equalsIgnoreCase(SegmentType.FROM_TO.name())) {
                queryString.append("AND (csrc.from_value <= :value AND  csrc.to_value >= :value) ");
            } else {
                queryString.append("AND (csrc.value = :value) ");
            }

            Query query = entityManager.createNativeQuery(queryString.toString());
            query.setParameter("productid", request.getProductid());
            query.setParameter("name", characteristic.getName());
            query.setParameter("value", characteristic.getValue());

            try {
                Object[] chtr = (Object[]) query.getSingleResult();
                scoreDetail.setScore((Double) chtr[0]);
                scoreDetail.setScoreRate((Double) chtr[1]);
            } catch (Exception exception) {
                scoreDetail.setScore(0);
                scoreDetail.setScoreRate(0);
            }
            scoreDetailList.add(scoreDetail.build());
        }
        ProductScoreRateResp.Builder builder = ProductScoreRateResp.newBuilder();
        builder.setUniqueid(request.getUniqueid());
        for (ScoreDetail scoreDetail : scoreDetailList) {
            builder.addScoreDetail(scoreDetail);
        }
        double totalCreditScore = scoreDetailList.stream().collect(Collectors.summingDouble(ScoreDetail::getScoreRate));
        builder.setTotalCreditScore(totalCreditScore);

        return builder.build();
    }
}
