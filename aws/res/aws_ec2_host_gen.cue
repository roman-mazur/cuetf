package res

#aws_ec2_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_host")
	arn?:              string
	asset_id?:         string
	auto_placement?:   string
	availability_zone: string
	host_recovery?:    string
	id?:               string
	instance_family?:  string
	instance_type?:    string
	outpost_arn?:      string
	owner_id?:         string
	tags?: [string]: string
	tags_all?: [string]: string
}
