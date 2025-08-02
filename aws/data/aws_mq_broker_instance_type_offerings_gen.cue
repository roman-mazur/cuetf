package data

#aws_mq_broker_instance_type_offerings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_mq_broker_instance_type_offerings")
	close({
		broker_instance_options?: [...close({
			availability_zones?: [...close({
				name?: string
			})]
			engine_type?:        string
			host_instance_type?: string
			storage_type?:       string
			supported_deployment_modes?: [...string]
			supported_engine_versions?: [...string]
		})]
		engine_type?:        string
		host_instance_type?: string
		id?:                 string
		region?:             string
		storage_type?:       string
	})
}
