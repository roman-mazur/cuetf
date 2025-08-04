package res

#aws_timestreaminfluxdb_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_timestreaminfluxdb_db_instance")
	close({
		allocated_storage!: number
		arn?:               string
		availability_zone?: string
		bucket!:            string
		log_delivery_configuration?: matchN(1, [#log_delivery_configuration, [...#log_delivery_configuration]])
		db_instance_type!:                  string
		db_parameter_group_identifier?:     string
		db_storage_type?:                   string
		deployment_type?:                   string
		endpoint?:                          string
		id?:                                string
		influx_auth_parameters_secret_arn?: string
		timeouts?:                          #timeouts
		name!:                              string
		network_type?:                      string
		organization!:                      string
		password!:                          string
		port?:                              number
		publicly_accessible?:               bool
		region?:                            string
		secondary_availability_zone?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		username!: string
		vpc_security_group_ids!: [...string]
		vpc_subnet_ids!: [...string]
	})

	#log_delivery_configuration: close({
		s3_configuration?: matchN(1, [_#defs."/$defs/log_delivery_configuration/$defs/s3_configuration", [..._#defs."/$defs/log_delivery_configuration/$defs/s3_configuration"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/log_delivery_configuration/$defs/s3_configuration": close({
		bucket_name!: string
		enabled!:     bool
	})
}
