package res

#aws_devopsguru_service_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_devopsguru_service_integration")
	id?: string
	kms_server_side_encryption?: #kms_server_side_encryption | [...#kms_server_side_encryption]
	logs_anomaly_detection?: #logs_anomaly_detection | [...#logs_anomaly_detection]
	ops_center?: #ops_center | [...#ops_center]

	#kms_server_side_encryption: {
		kms_key_id?:    string
		opt_in_status?: string
		type?:          string
	}

	#logs_anomaly_detection: opt_in_status?: string

	#ops_center: opt_in_status?: string
}
