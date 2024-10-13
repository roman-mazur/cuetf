package res

#aws_cloud9_environment_ec2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloud9_environment_ec2")
	arn?:                         string
	automatic_stop_time_minutes?: number
	connection_type?:             string
	description?:                 string
	id?:                          string
	image_id!:                    string
	instance_type!:               string
	name!:                        string
	owner_arn?:                   string
	subnet_id?:                   string
	tags?: [string]:     string
	tags_all?: [string]: string
	type?: string
}
