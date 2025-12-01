package res

#aws_config_aggregate_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_config_aggregate_authorization")
	close({
		account_id!:            string
		arn?:                   string
		authorized_aws_region?: string
		id?:                    string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
