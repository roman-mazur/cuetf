package res

#aws_egress_only_internet_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_egress_only_internet_gateway")
	id?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_id!: string
}
