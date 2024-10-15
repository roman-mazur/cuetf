package res

#aws_ec2_managed_prefix_list_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_managed_prefix_list_entry")
	cidr!:           string
	description?:    string
	id?:             string
	prefix_list_id!: string
}
