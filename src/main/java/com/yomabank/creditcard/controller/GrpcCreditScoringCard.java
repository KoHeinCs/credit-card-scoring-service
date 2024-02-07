package com.yomabank.creditcard.controller;

import com.yomabank.creditcard.service.ICreditCoreService;
import com.yomabank.creditscorecard.model.CreditCardScoreServiceGrpc;
import com.yomabank.creditscorecard.model.ProductScoreRateReq;
import com.yomabank.creditscorecard.model.ProductScoreRateResp;
import io.grpc.StatusRuntimeException;
import io.grpc.stub.StreamObserver;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.lognet.springboot.grpc.GRpcService;

/**
 * @author heinhtet_aung
 * @created 1/16/2024
 **/
@GRpcService
@RequiredArgsConstructor
public class GrpcCreditScoringCard extends CreditCardScoreServiceGrpc.CreditCardScoreServiceImplBase {
    private final static Logger logger = LogManager.getLogger(GrpcCreditScoringCard.class);
    private final ICreditCoreService creditCoreService;

    @Override
    public void calculateProductScoreRate(ProductScoreRateReq request, StreamObserver<ProductScoreRateResp> responseObserver) {
        logger.info("Entering calculateProductScoreRate method with request  " + request);

        if (request.getProductid().isEmpty()) {
            logger.error("Invalid/Incomplete productid provided!");
            responseObserver.onError(new StatusRuntimeException(io.grpc.Status.INVALID_ARGUMENT));
            responseObserver.onCompleted();
        }

        if (request.getCharacteristicList().isEmpty()) {
            logger.error("Invalid/Incomplete character list provided!");
            responseObserver.onError(new StatusRuntimeException(io.grpc.Status.INVALID_ARGUMENT));
            responseObserver.onCompleted();
        }

        try {
            ProductScoreRateResp productScoreRateResp = creditCoreService.calculateProductScoreRate(request);
            logger.info("calculateProductScoreRate Response: {}", productScoreRateResp);
            responseObserver.onNext(productScoreRateResp);
            responseObserver.onCompleted();

        } catch (StatusRuntimeException statusRuntimeException) {
            logger.error("Exception with request id " + request.getUniqueid() + " => " + statusRuntimeException.getStatus(), statusRuntimeException);
            responseObserver.onError(statusRuntimeException);
        } catch (Throwable ex) {
            logger.error("Exception with request id " +  request.getUniqueid() + " => " + ex);
            responseObserver.onError(ex);
        }

    }
}
