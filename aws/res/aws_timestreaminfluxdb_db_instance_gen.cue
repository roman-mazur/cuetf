package res

#aws_timestreaminfluxdb_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_timestreaminfluxdb_db_instance")
	allocated_storage!:                 number
	arn?:                               string
	availability_zone?:                 string
	bucket!:                            string
	db_instance_type!:                  string
	db_parameter_group_identifier?:     string
	db_storage_type?:                   string
	deployment_type?:                   string
	endpoint?:                          string
	id?:                                string
	influx_auth_parameters_secret_arn?: string
	name!:                              string
	organization!:                      string
	password!:                          string
	publicly_accessible?:               bool
	secondary_availability_zone?:       string
	tags?: [string]:     string
	tags_all?: [string]: string
	username!: string
	vpc_security_group_ids!: [...string]
	vpc_subnet_ids!: [...string]
	log_delivery_configuration?: #log_delivery_configuration | [...#log_delivery_configuration]
	timeouts?: #timeouts

	#log_delivery_configuration: {
		s3_configuration?: #log_delivery_configuration.#s3_configuration | [...#log_delivery_configuration.#s3_configuration]

		#s3_configuration: {
			bucket_name!: string
			enabled!:     bool
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
