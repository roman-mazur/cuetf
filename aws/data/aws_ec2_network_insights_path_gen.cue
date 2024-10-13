package data

#aws_ec2_network_insights_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_network_insights_path")
	arn?:                      string
	destination?:              string
	destination_arn?:          string
	destination_ip?:           string
	destination_port?:         number
	id?:                       string
	network_insights_path_id?: string
	protocol?:                 string
	source?:                   string
	source_arn?:               string
	source_ip?:                string
	tags?: [string]: string
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
