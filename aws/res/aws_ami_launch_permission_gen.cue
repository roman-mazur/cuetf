package res

#aws_ami_launch_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ami_launch_permission")
	account_id?:              string
	group?:                   string
	id?:                      string
	image_id!:                string
	organization_arn?:        string
	organizational_unit_arn?: string
}
