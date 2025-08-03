package res

#aws_redshift_usage_limit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_usage_limit")
	close({
		amount!:             number
		arn?:                string
		breach_action?:      string
		cluster_identifier!: string
		feature_type!:       string
		id?:                 string
		limit_type!:         string
		period?:             string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
