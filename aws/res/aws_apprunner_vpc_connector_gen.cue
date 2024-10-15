package res

#aws_apprunner_vpc_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_vpc_connector")
	arn?: string
	id?:  string
	security_groups!: [...string]
	status?: string
	subnets!: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_connector_name!:     string
	vpc_connector_revision?: number
}
