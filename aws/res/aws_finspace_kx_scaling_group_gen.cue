package res

#aws_finspace_kx_scaling_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_finspace_kx_scaling_group")
	arn?:                  string
	availability_zone_id!: string
	clusters?: [...string]
	created_timestamp?:       string
	environment_id!:          string
	host_type!:               string
	id?:                      string
	last_modified_timestamp?: string
	name!:                    string
	status?:                  string
	status_reason?:           string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
