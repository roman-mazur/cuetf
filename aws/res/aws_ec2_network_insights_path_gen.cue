package res

#aws_ec2_network_insights_path: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_network_insights_path")
	arn?:              string
	destination?:      string
	destination_arn?:  string
	destination_ip?:   string
	destination_port?: number
	id?:               string
	protocol!:         string
	source!:           string
	source_arn?:       string
	source_ip?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
}
