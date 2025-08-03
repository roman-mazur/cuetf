package data

#aws_rds_cluster_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_cluster_parameter_group")
	close({
		arn?:         string
		description?: string
		family?:      string
		name!:        string
		region?:      string
	})
}
