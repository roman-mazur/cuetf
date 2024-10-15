package res

#aws_cloudhsm_v2_hsm: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudhsm_v2_hsm")
	availability_zone?: string
	cluster_id!:        string
	hsm_eni_id?:        string
	hsm_id?:            string
	hsm_state?:         string
	id?:                string
	ip_address?:        string
	subnet_id?:         string
	timeouts?:          #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
