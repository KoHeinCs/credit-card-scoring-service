package com.yomabank.creditcard.service;

import com.yomabank.creditscorecard.model.ProductScoreRateReq;
import com.yomabank.creditscorecard.model.ProductScoreRateResp;

/**
 * @author heinhtet_aung
 * @created 1/17/2024
 **/
public interface ICreditCoreService {
    ProductScoreRateResp calculateProductScoreRate(ProductScoreRateReq request);
}
