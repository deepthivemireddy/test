CREATE DATABASE IF NOT EXISTS ${hiveconf:dbName} COMMENT 'Siebel base database' LOCATION '${hiveconf:hdfsDIR}';


CREATE EXTERNAL TABLE IF NOT EXISTS ${hiveconf:dbName}.gl_account_daily_aggregated_fact
(
 bancs_account_number string, 
  account_type string, 
  branch string, 
  scheme string, 
  division string, 
  master_case_number_finance string, 
  contact_scin string, 
  contact_sensitive_indicator string, 
  contact_personal_interest_indicator string, 
  contact_name string, 
  contact_role string, 
  employer_name string, 
  employer_reference_number bigint, 
  gl_transcation_date string, 
  aggregate_value_of_nrp_child_maintenance_libality_charged double, 
  aggregate_value_of_nrp_residual_arrears_transitioned double, 
  aggregate_value_of_non_child_maintenance_charged double, 
  aggregate_value_of_nrp_direct_pay_maintenance_charged double, 
  aggregate_value_of_nrp_enforcement_charges double, 
  aggregate_value_of_nrp_collection_charges double, 
  aggregate_value_of_pwc_direct_pay_maintenance_charged double, 
  aggregate_value_of_pwc_child_maintenance_liability_charged double, 
  aggregate_value_of_pwc_residual_arrears_transitioned double, 
  aggregate_value_of_ongoing_child_maintenance_cash_received double, 
  aggregate_value_of_residual_arrears_cash_received double, 
  aggregate_value_of_nrp_enforcement_charge_cash_received double, 
  aggregate_value_of_nrp_collection_cash_received double, 
  aggregate_value_of_residual_arrears_cash_paid double, 
  aggregate_value_of_child_maintenance_cash_paid double, 
  aggregate_value_of_cash_refunds_paid_to_nrp double, 
  aggregate_value_of_pwc_payment_charges_paid double, 
  aggregate_value_of_non_cash_receipt double, 
  aggregate_value_of_residual_arrears_non_cash_receipt double, 
  aggregate_value_of_non_cash_payment double, 
  aggregate_value_of_residual_arrears_non_cash_payment double, 
  aggregate_value_of_nrp_direct_pay_receipt double, 
  aggregate_value_of_pwc_direct_pay_payment double, 
  aggregate_value_of_write_offs_nrp double, 
  aggregate_value_of_nrp_coll_charges_written_of double, 
  aggregate_value_of_nrp_enforcement_write_off double, 
  aggregate_value_of_cmg_cost_written_off double, 
  aggregate_value_of_sos_liabilities_written_off double, 
  aggregate_value_of_residual_arrears_written_of_nrp double, 
  aggregate_value_of_write_off_pwc double, 
  aggregate_value_of_legacy_write_off_pwc double,
  process_time string
)

PARTITIONED BY (BUSINESS_DATE STRING)
STORED AS AVRO
LOCATION '${hiveconf:hdfsDIR}/gl_account_daily_aggregated_fact';


