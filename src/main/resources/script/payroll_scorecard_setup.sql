

INSERT INTO approval_status (approval_status_id, approval_status, approval_status_name, percentage_from, percentage_to) VALUES ('YBAPS003001', 'APPROVED', 'Approved', 0, 100);
INSERT INTO approval_status (approval_status_id, approval_status, approval_status_name, percentage_from, percentage_to) VALUES ('YBAPS003002', 'FLAG_TO_REVIEW', 'Flag to review', 1000, 1000);
INSERT INTO approval_status (approval_status_id, approval_status, approval_status_name, percentage_from, percentage_to) VALUES ('YBAPS003003', 'REJECTED', 'Rejected', 1000, 1000);


-- insert one record for Product/SegmentType
INSERT INTO product (product_id, created_by, created_date, updated_by, updated_date, credit_limit, max_credit_limit_amt, product_type, total_height_score, version, description, product_detail, full_repayment, minimal_repayment) VALUES ('YBPRD00120240116150554663', 'SYSTEM', '2024-01-16 15:06:12', null, null, 2, 5000000, 'PAYROLL', 175, 0, null, '{"cardInfo": [{"key": "Annual Fee", "value": "30,0000 MMK"}, {"key": "Cash Advance Interest Rate", "value": "16% p.a"}, {"key": "Credit Usage Fees", "value": "5% p.a"}, {"key": "IPP", "value": "3,6,9,12 (Months)"}, {"key": "Card Issuing Fees", "value": "20,000 MMK"}, {"key": "Purchase Interest Rate", "value": "16% p.a"}, {"key": "Late Fees", "value": "1% on the outstanding balance"}, {"key": "IPP Interest", "value": "14.5% p.a"}]}', 'Dfcc_Package_FP_SD05', 'Dfcc_Package_MP_SD05');

-- insert recored for product approval status ---
INSERT INTO product_approval_status (product_id, approval_status_id)
VALUES
    ('YBPRD00120240116150554663', 'YBAPS003001'),
    ('YBPRD00120240116150554663', 'YBAPS003002'),
    ('YBPRD00120240116150554663', 'YBAPS003003');

-- insert Characteristics
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240116145631232', 'SYSTEM', '2024-01-16 14:56:55', null, null, 'Age', 'AGE', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240116145830666', 'SYSTEM', '2024-01-16 14:58:44', null, null, 'No. of dependents', 'NO_OF_DEPENDENT', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240116145924057', 'SYSTEM', '2024-01-16 14:59:43', null, null, 'Residential status', 'RESIDENTIAL_STATUS', 'FIXED', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240116150352830', 'SYSTEM', '2024-01-16 15:04:07', null, null, 'Relationship with Yoma Bank', 'RELATION_WITH_YB', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240117153125038', 'SYSTEM', '2024-01-17 15:23:32', null, null, 'Length at current residence', 'LENGTH_OF_CURRENT_RESIDENCE', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240117153143816', 'SYSTEM', '2024-01-17 15:24:20', null, null, 'Length at current employer', 'LENGTH_OF_CURRENT_EMPLOYER', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240117153156610', 'SYSTEM', '2024-01-17 15:26:14', null, null, 'Consolidated monthly income ', 'CONSOLIDATED_MTHLY_INCOME', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240117153207346', 'SYSTEM', '2024-01-17 15:27:03', null, null, 'Average monthly balance within 12-months (or MOB)', 'AVG_MTHLY_BALANCE_12M', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240117153219735', 'SYSTEM', '2024-01-17 15:28:13', null, null, 'Maximum DPD achieved within past 12-months', 'MAX_DPD_12M', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240117153229780', 'SYSTEM', '2024-01-17 15:28:28', null, null, 'Deliquency frequency within past 12-months ', 'DELIQUENT_FREQUENCY_12M', 'FROM_TO', null, 0);
INSERT INTO characteristic (characteristic_id, created_by, created_date, updated_by, updated_date, description, name, segment_type, value, version) VALUES ('YBCHR00220240117153239211', 'SYSTEM', '2024-01-17 15:28:28', null, null, 'Debt-to-income ', 'DEBT_TO_INCOME', 'FROM_TO', null, 0);


-- link product and characteristics for 'PAYROLL' product
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240116145631232');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240116145924057');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240116150352830');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240116145830666');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240117153125038');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240117153143816');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240117153156610');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240117153207346');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240117153219735');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240117153229780');
INSERT INTO product_characteristic (productid, characteristicid) VALUES ('YBPRD00120240116150554663', 'YBCHR00220240117153239211');







-- ************************************************************************** Start Payroll for AGE character *****************************************************************

-- product_score_rate
-- insert product score rate  for  weightage (10%) , rank (1) and score (10) , score_percent (2)
-- insert product score rate  for  weightage (10%) , rank (2) and score (20) , score_percent (4)
-- insert product score rate  for  weightage (10%) , rank (3) and score (30) , score_percent (6)
-- insert product score rate  for  weightage (10%) , rank (2) and score (20) , score_percent (4)
-- insert product score rate  for  weightage (10%) , rank (1) and score (10) , score_percent (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid) VALUES ('YBPRDPSR00320240116154901122', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 10, 2, 0, 0.1, 'YBPRD00120240116150554663');
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid) VALUES ('YBPRDPSR00320240116160623687', 'SYSTEM', '2024-01-16 16:06:36', null, null, 2, 20, 4, 0, 0.1, 'YBPRD00120240116150554663');
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid) VALUES ('YBPRDPSR00320240116160801741', 'SYSTEM', '2024-01-16 16:08:12', null, null, 3, 30, 6, 0, 0.1, 'YBPRD00120240116150554663');
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid) VALUES ('YBPRDPSR00320240116160910226', 'SYSTEM', '2024-01-16 16:09:20', null, null, 2, 20, 4, 0, 0.1, 'YBPRD00120240116150554663');
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid) VALUES ('YBPRDPSR00320240116161333468', 'SYSTEM', '2024-01-16 16:13:47', null, null, 1, 10, 2, 0, 0.1, 'YBPRD00120240116150554663');

-- product_score_rate_characteristic
-- link product_score_rate and product_score_rate_characteristic for age (21-25)
-- link product_score_rate and product_score_rate_characteristic for age (26-30)
-- link product_score_rate and product_score_rate_characteristic for age (31-55)
-- link product_score_rate and product_score_rate_characteristic for age (56-60)
-- link product_score_rate and product_score_rate_characteristic for age (61-65)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid) VALUES ('YBPRDPSRCHR00420240116162124126', 'SYSTEM', '2024-01-16 16:21:45', null, null, 21, 25, null, 0, 'YBCHR00220240116145631232', 'YBPRDPSR00320240116154901122');
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid) VALUES ('YBPRDPSRCHR00420240116163042861', 'SYSTEM', '2024-01-16 16:30:52', null, null, 26, 30, null, 0, 'YBCHR00220240116145631232', 'YBPRDPSR00320240116160623687');
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid) VALUES ('YBPRDPSRCHR00420240116163150545', 'SYSTEM', '2024-01-16 16:32:00', null, null, 31, 55, null, 0, 'YBCHR00220240116145631232', 'YBPRDPSR00320240116160801741');
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid) VALUES ('YBPRDPSRCHR00420240116163245185', 'SYSTEM', '2024-01-16 16:33:04', null, null, 56, 60, null, 0, 'YBCHR00220240116145631232', 'YBPRDPSR00320240116160910226');
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid) VALUES ('YBPRDPSRCHR00420240116163348726', 'SYSTEM', '2024-01-16 16:33:57', null, null, 61, 65, null, 0, 'YBCHR00220240116145631232', 'YBPRDPSR00320240116161333468');


-- ************************************************************************** End Payroll for AGE character *****************************************************************

-- ************************************************************************** Start Payroll for Residential status character *****************************************************************

-- insert product score rate  for  weightage (10%) , rank (4) and score (40) , score_rate (8)
-- insert product score rate  for  weightage (10%) , rank (3) and score (30) , score_rate (6)
-- insert product score rate  for  weightage (10%) , rank (2) and score (20) , score_rate (4)
-- insert product score rate  for  weightage (10%) , rank (1) and score (10) , score_rate (2)
-- insert product score rate  for  weightage (10%) , rank (1) and score (10) , score_rate (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240117161327278', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 40, 8, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240117161344902', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 30, 6, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240117161357120', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 20, 4, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240117161411072', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 10, 2, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240117161428811', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 10, 2, 0, 0.1, 'YBPRD00120240116150554663');

-- product_score_rate_characteristic
-- link product_score_rate and product_score_rate_characteristic for Residential Status (Owned Property)
-- link product_score_rate and product_score_rate_characteristic for Residential Status (Homeloan/Mortgage)
-- link product_score_rate and product_score_rate_characteristic for Residential Status (Rental/lease)
-- link product_score_rate and product_score_rate_characteristic for Residential Status (Living with parents/family)
-- link product_score_rate and product_score_rate_characteristic for Residential Status (Employer provided accommodation)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240117163542991', 'SYSTEM', '2024-01-16 16:33:57', null, null, null, null, 'Owned Property', 0, 'YBCHR00220240116145924057', 'YBPRDPSR00320240117161327278'),
       ('YBPRDPSRCHR00420240117163610788', 'SYSTEM', '2024-01-16 16:33:57', null, null, null, null, 'Homeloan/Mortgage', 0, 'YBCHR00220240116145924057', 'YBPRDPSR00320240117161344902'),
       ('YBPRDPSRCHR00420240117163625115', 'SYSTEM', '2024-01-16 16:33:57', null, null, null, null, 'Rental/lease', 0, 'YBCHR00220240116145924057', 'YBPRDPSR00320240117161357120'),
       ('YBPRDPSRCHR00420240117163636970', 'SYSTEM', '2024-01-16 16:33:57', null, null, null, null, 'Living with parents/family', 0, 'YBCHR00220240116145924057', 'YBPRDPSR00320240117161411072'),
       ('YBPRDPSRCHR00420240117163648995', 'SYSTEM', '2024-01-16 16:33:57', null, null, null, null, 'Employer provided accommodation', 0, 'YBCHR00220240116145924057', 'YBPRDPSR00320240117161428811');



-- ************************************************************************** End Payroll for Residential status character *****************************************************************


-- ************************************************************************** Start Payroll for Relationship with Yoma Bank character *****************************************************************

-- insert product score rate  for  weightage (5%) , rank (3) and score (15) , score_rate (3)
-- insert product score rate  for  weightage (5%) , rank (2) and score (10) , score_rate (2)
-- insert product score rate  for  weightage (5%) , rank (1) and score (5) , score_rate (1)
-- insert product score rate  for  weightage (5%) , rank (1) and score (5) , score_rate (1)
-- insert product score rate  for  weightage (5%) , rank (1) and score (5) , score_rate (1)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240118221750619', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 15, 3, 0, 0.05, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240118221822163', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 10, 2, 0, 0.05, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240118221840527', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 5, 1, 0, 0.05, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240118221957716', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 5, 1, 0, 0.05, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240118222027991', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 5, 1, 0, 0.05, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for RELATION_WITH_YB (1096  to 99999)
-- link product_score_rate and product_score_rate_characteristic for RELATION_WITH_YB (90 to 1095)
-- link product_score_rate and product_score_rate_characteristic for RELATION_WITH_YB (30 to 89)
-- link product_score_rate and product_score_rate_characteristic for RELATION_WITH_YB (-1 to -1)
-- link product_score_rate and product_score_rate_characteristic for RELATION_WITH_YB (0 to 29)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240118222114666', 'SYSTEM', '2024-01-16 16:33:57', null, null, 1096, 99999, null, 0, 'YBCHR00220240116150352830', 'YBPRDPSR00320240118221750619'),
       ('YBPRDPSRCHR00420240118222133409', 'SYSTEM', '2024-01-16 16:33:57', null, null, 90, 1095, null, 0, 'YBCHR00220240116150352830', 'YBPRDPSR00320240118221822163'),
       ('YBPRDPSRCHR00420240118222150370', 'SYSTEM', '2024-01-16 16:33:57', null, null, 30, 89, null, 0, 'YBCHR00220240116150352830', 'YBPRDPSR00320240118221840527'),
       ('YBPRDPSRCHR00420240118222206211', 'SYSTEM', '2024-01-16 16:33:57', null, null, -1, -1, null, 0, 'YBCHR00220240116150352830', 'YBPRDPSR00320240118221957716'),
       ('YBPRDPSRCHR00420240118222216442', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0, 29, null, 0, 'YBCHR00220240116150352830', 'YBPRDPSR00320240118222027991');


-- ************************************************************************** End Payroll for Relationship with Yoma Bank character *****************************************************************

-- ************************************************************************** Start Payroll for Relationship with No. of dependents  character *****************************************************************

-- insert product score rate  for  weightage (10%) , rank (5) and score (50) , score_rate (10)
-- insert product score rate  for  weightage (10%) , rank (4) and score (40) , score_rate (8)
-- insert product score rate  for  weightage (10%) , rank (3) and score (30) , score_rate (6)
-- insert product score rate  for  weightage (10%) , rank (2) and score (20) , score_rate (4)
-- insert product score rate  for  weightage (10%) , rank (1) and score (10) , score_rate (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119105909308', 'SYSTEM', '2024-01-16 15:49:23', null, null, 5, 50, 10, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119105930957', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 40, 8, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119105952445', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 30, 6, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119110229988', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 20, 4, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119110243643', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 10, 2, 0, 0.1, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for NO_OF_DEPENDENT (0  to 0)
-- link product_score_rate and product_score_rate_characteristic for NO_OF_DEPENDENT (1  to 1)
-- link product_score_rate and product_score_rate_characteristic for NO_OF_DEPENDENT (2  to 2)
-- link product_score_rate and product_score_rate_characteristic for NO_OF_DEPENDENT (3  to 3)
-- link product_score_rate and product_score_rate_characteristic for NO_OF_DEPENDENT (4  to 99)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119110310647', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0, 0, null, 0, 'YBCHR00220240116145830666', 'YBPRDPSR00320240119105909308'),
       ('YBPRDPSRCHR00420240119110322625', 'SYSTEM', '2024-01-16 16:33:57', null, null, 1, 1, null, 0, 'YBCHR00220240116145830666', 'YBPRDPSR00320240119105930957'),
       ('YBPRDPSRCHR00420240119110342852', 'SYSTEM', '2024-01-16 16:33:57', null, null, 2, 2, null, 0, 'YBCHR00220240116145830666', 'YBPRDPSR00320240119105952445'),
       ('YBPRDPSRCHR00420240119110354606', 'SYSTEM', '2024-01-16 16:33:57', null, null, 3, 3, null, 0, 'YBCHR00220240116145830666', 'YBPRDPSR00320240119110229988'),
       ('YBPRDPSRCHR00420240119110404985', 'SYSTEM', '2024-01-16 16:33:57', null, null, 4, 99, null, 0, 'YBCHR00220240116145830666', 'YBPRDPSR00320240119110243643');


-- ************************************************************************** End Payroll for Relationship with No. of dependents  character *****************************************************************

-- ************************************************************************** Start Payroll for Length at current residence  character *****************************************************************

-- insert product score rate  for  weightage (8%) , rank (4) and score (32) , score_rate (7)
-- insert product score rate  for  weightage (8%) , rank (3) and score (24) , score_rate (5)
-- insert product score rate  for  weightage (8%) , rank (2) and score (16) , score_rate (3)
-- insert product score rate  for  weightage (8%) , rank (1) and score (8) , score_rate (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119113313594', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 32, 7, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119113329089', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 24, 5, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119113342308', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 16, 3, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119113356322', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 8, 2, 0, 0.08, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_RESIDENCE (121 - 132)
-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_RESIDENCE (61 - 120)
-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_RESIDENCE (12 - 60)
-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_RESIDENCE (0 - 11 )
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119113419922', 'SYSTEM', '2024-01-16 16:33:57', null, null, 121, 132, null, 0, 'YBCHR00220240117153125038', 'YBPRDPSR00320240119113313594'),
       ('YBPRDPSRCHR00420240119113431535', 'SYSTEM', '2024-01-16 16:33:57', null, null, 61, 120, null, 0, 'YBCHR00220240117153125038', 'YBPRDPSR00320240119113329089'),
       ('YBPRDPSRCHR00420240119113443469', 'SYSTEM', '2024-01-16 16:33:57', null, null, 12, 60, null, 0, 'YBCHR00220240117153125038', 'YBPRDPSR00320240119113342308'),
       ('YBPRDPSRCHR00420240119113454169', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0, 11, null, 0, 'YBCHR00220240117153125038', 'YBPRDPSR00320240119113356322');


-- ************************************************************************** End Payroll for Length at current residence  character *****************************************************************

-- ************************************************************************** Start Payroll for Length at current employer  character *****************************************************************

-- insert product score rate  for  weightage (10%) , rank (5) and score (50) , score_rate (10)
-- insert product score rate  for  weightage (10%) , rank (4) and score (40) , score_rate (8)
-- insert product score rate  for  weightage (10%) , rank (3) and score (30) , score_rate (6)
-- insert product score rate  for  weightage (10%) , rank (2) and score (20) , score_rate (4)
-- insert product score rate  for  weightage (10%) , rank (1) and score (10) , score_rate (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119133045552', 'SYSTEM', '2024-01-16 15:49:23', null, null, 5, 50, 10, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119133101273', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 40, 8, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119133116750', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 30, 6, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119133131430', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 20, 4, 0, 0.1, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119133151513', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 10, 2, 0, 0.1, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_EMPLOYER (121  - 132)
-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_EMPLOYER (61 - 120 )
-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_EMPLOYER (37 - 60)
-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_EMPLOYER (13 - 36)
-- link product_score_rate and product_score_rate_characteristic for LENGTH_OF_CURRENT_EMPLOYER (0 - 12)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119133218539', 'SYSTEM', '2024-01-16 16:33:57', null, null, 121, 132, null, 0, 'YBCHR00220240117153143816', 'YBPRDPSR00320240119133045552'),
       ('YBPRDPSRCHR00420240119133230053', 'SYSTEM', '2024-01-16 16:33:57', null, null, 61, 120, null, 0, 'YBCHR00220240117153143816', 'YBPRDPSR00320240119133101273'),
       ('YBPRDPSRCHR00420240119133241645', 'SYSTEM', '2024-01-16 16:33:57', null, null, 37, 60, null, 0, 'YBCHR00220240117153143816', 'YBPRDPSR00320240119133116750'),
       ('YBPRDPSRCHR00420240119133252886', 'SYSTEM', '2024-01-16 16:33:57', null, null, 13, 36, null, 0, 'YBCHR00220240117153143816', 'YBPRDPSR00320240119133131430'),
       ('YBPRDPSRCHR00420240119133312853', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0, 12, null, 0, 'YBCHR00220240117153143816', 'YBPRDPSR00320240119133151513');



-- ************************************************************************** End Payroll for Length at current employer  character *****************************************************************


-- ************************************************************************** Start Payroll for CONSOLIDATED_MTHLY_INCOME  character *****************************************************************

-- insert product score rate  for  weightage (15%) , rank (6) and score (90) , score_rate (18)
-- insert product score rate  for  weightage (15%) , rank (6) and score (90) , score_rate (18)
-- insert product score rate  for  weightage (15%) , rank (5) and score (75) , score_rate (15)
-- insert product score rate  for  weightage (15%) , rank (4) and score (60) , score_rate (12)
-- insert product score rate  for  weightage (15%) , rank (3) and score (45) , score_rate (9)
-- insert product score rate  for  weightage (15%) , rank (2) and score (30) , score_rate (6)
-- insert product score rate  for  weightage (15%) , rank (1) and score (15) , score_rate (3)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119141158366', 'SYSTEM', '2024-01-16 15:49:23', null, null, 6, 90, 18, 0, 0.15, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119141214654', 'SYSTEM', '2024-01-16 15:49:23', null, null, 6, 90, 18, 0, 0.15, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119141228694', 'SYSTEM', '2024-01-16 15:49:23', null, null, 5, 75, 15, 0, 0.15, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119141243691', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 60, 12, 0, 0.15, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119141258537', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 45, 9, 0, 0.15, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119141313002', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 30, 6, 0, 0.15, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119141327052', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 15, 3, 0, 0.15, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for CONSOLIDATED_MTHLY_INCOME (10000001 to 99999999)
-- link product_score_rate and product_score_rate_characteristic for CONSOLIDATED_MTHLY_INCOME (5000001 to 10000000)
-- link product_score_rate and product_score_rate_characteristic for CONSOLIDATED_MTHLY_INCOME (2500001 to 5000000)
-- link product_score_rate and product_score_rate_characteristic for CONSOLIDATED_MTHLY_INCOME (1500001 to 2500000)
-- link product_score_rate and product_score_rate_characteristic for CONSOLIDATED_MTHLY_INCOME (1000001 to 1500000)
-- link product_score_rate and product_score_rate_characteristic for CONSOLIDATED_MTHLY_INCOME (750001 to 1000000)
-- link product_score_rate and product_score_rate_characteristic for CONSOLIDATED_MTHLY_INCOME (500000 to 750000)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119141351505', 'SYSTEM', '2024-01-16 16:33:57', null, null, 10000001, 99999999, null, 0, 'YBCHR00220240117153156610', 'YBPRDPSR00320240119141158366'),
       ('YBPRDPSRCHR00420240119141404285', 'SYSTEM', '2024-01-16 16:33:57', null, null, 5000001, 10000000, null, 0, 'YBCHR00220240117153156610', 'YBPRDPSR00320240119141214654'),
       ('YBPRDPSRCHR00420240119141435920', 'SYSTEM', '2024-01-16 16:33:57', null, null, 2500001, 5000000, null, 0, 'YBCHR00220240117153156610', 'YBPRDPSR00320240119141228694'),
       ('YBPRDPSRCHR00420240119141456598', 'SYSTEM', '2024-01-16 16:33:57', null, null, 1500001, 2500000, null, 0, 'YBCHR00220240117153156610', 'YBPRDPSR00320240119141243691'),
       ('YBPRDPSRCHR00420240119141508960', 'SYSTEM', '2024-01-16 16:33:57', null, null, 1000001, 1500000, null, 0, 'YBCHR00220240117153156610', 'YBPRDPSR00320240119141258537'),
       ('YBPRDPSRCHR00420240119141520644', 'SYSTEM', '2024-01-16 16:33:57', null, null, 750001, 1000000, null, 0, 'YBCHR00220240117153156610', 'YBPRDPSR00320240119141313002'),
       ('YBPRDPSRCHR00420240119141532079', 'SYSTEM', '2024-01-16 16:33:57', null, null, 500000, 750000, null, 0, 'YBCHR00220240117153156610', 'YBPRDPSR00320240119141327052');

-- ************************************************************************** End Payroll for CONSOLIDATED_MTHLY_INCOME  character *****************************************************************

-- ************************************************************************** Start Payroll for AVG_MTHLY_BALANCE_12M  character *****************************************************************

-- insert product score rate  for  weightage (10%) , rank (6) and score (60) , score_rate (12)
-- insert product score rate  for  weightage (10%) , rank (5) and score (50) , score_rate (10)
-- insert product score rate  for  weightage (10%) , rank (4) and score (40) , score_rate (8)
-- insert product score rate  for  weightage (10%) , rank (3) and score (30) , score_rate (6)
-- insert product score rate  for  weightage (10%) , rank (2) and score (20) , score_rate (4)
-- insert product score rate  for  weightage (10%) , rank (1) and score (10) , score_rate (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119143344210', 'SYSTEM', '2024-01-16 15:49:23', null, null, 6, 60, 12, 0, 0.10, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119143358416', 'SYSTEM', '2024-01-16 15:49:23', null, null, 5, 50, 10, 0, 0.10, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119143412818', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 40, 8, 0, 0.10, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119143426899', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 30, 6, 0, 0.10, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119143441368', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 20, 4, 0, 0.10, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119143454109', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 10, 2, 0, 0.10, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for AVG_MTHLY_BALANCE_12M (20000001 - 9999999999)
-- link product_score_rate and product_score_rate_characteristic for AVG_MTHLY_BALANCE_12M (2000000 to 2000000)
-- link product_score_rate and product_score_rate_characteristic for AVG_MTHLY_BALANCE_12M (1000000 to 1999999)
-- link product_score_rate and product_score_rate_characteristic for AVG_MTHLY_BALANCE_12M (500000 to 999999)
-- link product_score_rate and product_score_rate_characteristic for AVG_MTHLY_BALANCE_12M (300000 to 499999)
-- link product_score_rate and product_score_rate_characteristic for AVG_MTHLY_BALANCE_12M (100000 to 299999)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119144039335', 'SYSTEM', '2024-01-16 16:33:57', null, null, 20000001, 9999999999, null, 0, 'YBCHR00220240117153207346', 'YBPRDPSR00320240119143344210'),
       ('YBPRDPSRCHR00420240119144052304', 'SYSTEM', '2024-01-16 16:33:57', null, null, 2000000, 2000000, null, 0, 'YBCHR00220240117153207346', 'YBPRDPSR00320240119143358416'),
       ('YBPRDPSRCHR00420240119144103543', 'SYSTEM', '2024-01-16 16:33:57', null, null, 1000000, 1999999, null, 0, 'YBCHR00220240117153207346', 'YBPRDPSR00320240119143412818'),
       ('YBPRDPSRCHR00420240119144116181', 'SYSTEM', '2024-01-16 16:33:57', null, null, 500000, 999999, null, 0, 'YBCHR00220240117153207346', 'YBPRDPSR00320240119143426899'),
       ('YBPRDPSRCHR00420240119144127972', 'SYSTEM', '2024-01-16 16:33:57', null, null, 300000, 499999, null, 0, 'YBCHR00220240117153207346', 'YBPRDPSR00320240119143441368'),
       ('YBPRDPSRCHR00420240119144142633', 'SYSTEM', '2024-01-16 16:33:57', null, null, 100000, 299999, null, 0, 'YBCHR00220240117153207346', 'YBPRDPSR00320240119143454109');

-- ************************************************************************** End Payroll for AVG_MTHLY_BALANCE_12M  character *****************************************************************


-- ************************************************************************** Start Payroll for MAX_DPD_12M  character *****************************************************************

-- insert product score rate  for  weightage (8%) , rank (6) and score (48) , score_rate (10)
-- insert product score rate  for  weightage (8%) , rank (5) and score (40) , score_rate (8)
-- insert product score rate  for  weightage (8%) , rank (4) and score (32) , score_rate (7)
-- insert product score rate  for  weightage (8%) , rank (4) and score (32) , score_rate (7)
-- insert product score rate  for  weightage (8%) , rank (3) and score (24) , score_rate (5)
-- insert product score rate  for  weightage (8%) , rank (2) and score (16) , score_rate (3)
-- insert product score rate  for  weightage (8%) , rank (1) and score (8) , score_rate (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119152409926', 'SYSTEM', '2024-01-16 15:49:23', null, null, 6, 48, 10, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119152429841', 'SYSTEM', '2024-01-16 15:49:23', null, null, 5, 40, 8, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119152442790', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 32, 7, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119152455766', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 32, 7, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119152508423', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 24, 5, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119152525916', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 16, 3, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119152538434', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 8, 2, 0, 0.08, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for MAX_DPD_12M (0 to 0)
-- link product_score_rate and product_score_rate_characteristic for MAX_DPD_12M (7 to 14)
-- link product_score_rate and product_score_rate_characteristic for MAX_DPD_12M (15 to 29)
-- link product_score_rate and product_score_rate_characteristic for MAX_DPD_12M (-1 to -1)
-- link product_score_rate and product_score_rate_characteristic for MAX_DPD_12M (30 to 30)
-- link product_score_rate and product_score_rate_characteristic for MAX_DPD_12M (31 - 60)
-- link product_score_rate and product_score_rate_characteristic for MAX_DPD_12M (61 - 90)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119152559198', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0, 0, null, 0, 'YBCHR00220240117153219735', 'YBPRDPSR00320240119152409926'),
       ('YBPRDPSRCHR00420240119152610754', 'SYSTEM', '2024-01-16 16:33:57', null, null, 7, 14, null, 0, 'YBCHR00220240117153219735', 'YBPRDPSR00320240119152429841'),
       ('YBPRDPSRCHR00420240119152622017', 'SYSTEM', '2024-01-16 16:33:57', null, null, 15, 29, null, 0, 'YBCHR00220240117153219735', 'YBPRDPSR00320240119152442790'),
       ('YBPRDPSRCHR00420240119152636667', 'SYSTEM', '2024-01-16 16:33:57', null, null, -1, -1, null, 0, 'YBCHR00220240117153219735', 'YBPRDPSR00320240119152455766'),
       ('YBPRDPSRCHR00420240119152647802', 'SYSTEM', '2024-01-16 16:33:57', null, null, 30, 30, null, 0, 'YBCHR00220240117153219735', 'YBPRDPSR00320240119152508423'),
       ('YBPRDPSRCHR00420240119152659460', 'SYSTEM', '2024-01-16 16:33:57', null, null, 31, 60, null, 0, 'YBCHR00220240117153219735', 'YBPRDPSR00320240119152525916'),
       ('YBPRDPSRCHR00420240119152709606', 'SYSTEM', '2024-01-16 16:33:57', null, null, 61, 90, null, 0, 'YBCHR00220240117153219735', 'YBPRDPSR00320240119152538434');

-- ************************************************************************** End Payroll for MAX_DPD_12M  character *****************************************************************


-- ************************************************************************** Start Payroll for DELIQUENT_FREQUENCY_12M  character *****************************************************************

-- insert product score rate  for  weightage (6%) , rank (6) and score (36) , score_rate (7)
-- insert product score rate  for  weightage (6%) , rank (5) and score (30) , score_rate (6)
-- insert product score rate  for  weightage (6%) , rank (4) and score (24) , score_rate (5)
-- insert product score rate  for  weightage (6%) , rank (4) and score (24) , score_rate (5)
-- insert product score rate  for  weightage (6%) , rank (3) and score (18) , score_rate (4)
-- insert product score rate  for  weightage (6%) , rank (2) and score (12) , score_rate (2)
-- insert product score rate  for  weightage (6%) , rank (1) and score (6) , score_rate (1)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119160018429', 'SYSTEM', '2024-01-16 15:49:23', null, null, 6, 36, 7, 0, 0.06, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119160036792', 'SYSTEM', '2024-01-16 15:49:23', null, null, 5, 30, 6, 0, 0.06, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119160049607', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 24, 5, 0, 0.06, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119160105162', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 24, 5, 0, 0.06, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119160119329', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 18, 4, 0, 0.06, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119160132479', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 12, 2, 0, 0.06, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119160146781', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 6, 1, 0, 0.06, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for DELIQUENT_FREQUENCY_12M (0 to 0)
-- link product_score_rate and product_score_rate_characteristic for DELIQUENT_FREQUENCY_12M (1 to 1)
-- link product_score_rate and product_score_rate_characteristic for DELIQUENT_FREQUENCY_12M (3 to 4)
-- link product_score_rate and product_score_rate_characteristic for DELIQUENT_FREQUENCY_12M (-1 to -1)
-- link product_score_rate and product_score_rate_characteristic for DELIQUENT_FREQUENCY_12M (5 to 7)
-- link product_score_rate and product_score_rate_characteristic for DELIQUENT_FREQUENCY_12M (8 to 11)
-- link product_score_rate and product_score_rate_characteristic for DELIQUENT_FREQUENCY_12M (12 to 180)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119160209644', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0, 0, null, 0, 'YBCHR00220240117153229780', 'YBPRDPSR00320240119160018429'),
       ('YBPRDPSRCHR00420240119160222983', 'SYSTEM', '2024-01-16 16:33:57', null, null, 1, 1, null, 0, 'YBCHR00220240117153229780', 'YBPRDPSR00320240119160036792'),
       ('YBPRDPSRCHR00420240119160243568', 'SYSTEM', '2024-01-16 16:33:57', null, null, 3, 4, null, 0, 'YBCHR00220240117153229780', 'YBPRDPSR00320240119160049607'),
       ('YBPRDPSRCHR00420240119160254886', 'SYSTEM', '2024-01-16 16:33:57', null, null, -1, -1, null, 0, 'YBCHR00220240117153229780', 'YBPRDPSR00320240119160105162'),
       ('YBPRDPSRCHR00420240119160305658', 'SYSTEM', '2024-01-16 16:33:57', null, null, 5, 7, null, 0, 'YBCHR00220240117153229780', 'YBPRDPSR00320240119160119329'),
       ('YBPRDPSRCHR00420240119160317024', 'SYSTEM', '2024-01-16 16:33:57', null, null, 8, 11, null, 0, 'YBCHR00220240117153229780', 'YBPRDPSR00320240119160132479'),
       ('YBPRDPSRCHR00420240119160332782', 'SYSTEM', '2024-01-16 16:33:57', null, null, 12, 180, null, 0, 'YBCHR00220240117153229780', 'YBPRDPSR00320240119160146781');


-- ************************************************************************** End Payroll for DELIQUENT_FREQUENCY_12M  character *****************************************************************


-- ************************************************************************** Start Payroll for DEBT_TO_INCOME  character *****************************************************************

-- insert product score rate  for  weightage (8%) , rank (5) and score (40) , score_rate (8)
-- insert product score rate  for  weightage (8%) , rank (4) and score (32) , score_rate (7)
-- insert product score rate  for  weightage (8%) , rank (3) and score (24) , score_rate (5)
-- insert product score rate  for  weightage (8%) , rank (3) and score (24) , score_rate (5)
-- insert product score rate  for  weightage (8%) , rank (2) and score (16) , score_rate (3)
-- insert product score rate  for  weightage (8%) , rank (1) and score (8) , score_rate (2)
INSERT INTO product_score_rate (product_score_rate_id, created_by, created_date, updated_by, updated_date, character_rank, score, score_rate, version, weightage, productid)
VALUES ('YBPRDPSR00320240119163043150', 'SYSTEM', '2024-01-16 15:49:23', null, null, 5, 40, 8, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119163056805', 'SYSTEM', '2024-01-16 15:49:23', null, null, 4, 32, 7, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119163108297', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 24, 5, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119163119921', 'SYSTEM', '2024-01-16 15:49:23', null, null, 3, 24, 5, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119163130327', 'SYSTEM', '2024-01-16 15:49:23', null, null, 2, 16, 3, 0, 0.08, 'YBPRD00120240116150554663'),
       ('YBPRDPSR00320240119163144003', 'SYSTEM', '2024-01-16 15:49:23', null, null, 1, 8, 2, 0, 0.08, 'YBPRD00120240116150554663');

-- link product_score_rate and product_score_rate_characteristic for DEBT_TO_INCOME (0.001 to 0.199)
-- link product_score_rate and product_score_rate_characteristic for DEBT_TO_INCOME (0.200 to 0.299)
-- link product_score_rate and product_score_rate_characteristic for DEBT_TO_INCOME (-1 to -1)
-- link product_score_rate and product_score_rate_characteristic for DEBT_TO_INCOME (0.300 to 0.448)
-- link product_score_rate and product_score_rate_characteristic for DEBT_TO_INCOME (0.449 to 0.449)
-- link product_score_rate and product_score_rate_characteristic for DEBT_TO_INCOME (0.450- 999999999)
INSERT INTO product_score_rate_characteristic (product_score_rate_characteristic_id, created_by, created_date, updated_by, updated_date, from_value, to_value, value, version, characteristicid, productscorerateid)
VALUES ('YBPRDPSRCHR00420240119163200486', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0.001, 0.199, null, 0, 'YBCHR00220240117153239211', 'YBPRDPSR00320240119163043150'),
       ('YBPRDPSRCHR00420240119163214041', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0.200, 0.299, null, 0, 'YBCHR00220240117153239211', 'YBPRDPSR00320240119163056805'),
       ('YBPRDPSRCHR00420240119163224603', 'SYSTEM', '2024-01-16 16:33:57', null, null, -1, -1, null, 0, 'YBCHR00220240117153239211', 'YBPRDPSR00320240119163108297'),
       ('YBPRDPSRCHR00420240119163233421', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0.300, 0.448, null, 0, 'YBCHR00220240117153239211', 'YBPRDPSR00320240119163119921'),
       ('YBPRDPSRCHR00420240119163242558', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0.449,  0.449, null, 0, 'YBCHR00220240117153239211', 'YBPRDPSR00320240119163130327'),
       ('YBPRDPSRCHR00420240119163251980', 'SYSTEM', '2024-01-16 16:33:57', null, null, 0.450, 999999999, null, 0, 'YBCHR00220240117153239211', 'YBPRDPSR00320240119163144003');


-- ************************************************************************** End Payroll for DEBT_TO_INCOME  character *****************************************************************

