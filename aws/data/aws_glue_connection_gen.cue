package data

#aws_glue_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_glue_connection")
	close({
		arn?: string
		athena_properties?: [string]: string
		catalog_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		connection_properties?: [string]: string
		connection_type?: string
		description?:     string
		id!:              string
		match_criteria?: [...string]
		name?: string
		physical_connection_requirements?: [...close({
			availability_zone?: string
			security_group_id_list?: [...string]
			subnet_id?: string
		})]
		tags?: [string]: string
	})
}
