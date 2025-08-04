package res

#aws_devopsguru_service_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devopsguru_service_integration")
	close({
		kms_server_side_encryption?: matchN(1, [#kms_server_side_encryption, [...#kms_server_side_encryption]])
		logs_anomaly_detection?: matchN(1, [#logs_anomaly_detection, [...#logs_anomaly_detection]])
		ops_center?: matchN(1, [#ops_center, [...#ops_center]])
		region?: string
	})

	#kms_server_side_encryption: close({
		kms_key_id?:    string
		opt_in_status?: string
		type?:          string
	})

	#logs_anomaly_detection: close({
		opt_in_status?: string
	})

	#ops_center: close({
		opt_in_status?: string
	})
}
