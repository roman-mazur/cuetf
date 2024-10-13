package data

#aws_route53profiles_profiles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53profiles_profiles")
	profiles?: [...{
		arn?:          string
		id?:           string
		name?:         string
		share_status?: string
	}]
}
