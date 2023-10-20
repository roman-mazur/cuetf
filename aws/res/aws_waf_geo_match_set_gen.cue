package res

#aws_waf_geo_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_waf_geo_match_set")
	arn?:                  string
	id?:                   string
	name:                  string
	geo_match_constraint?: #geo_match_constraint | [...#geo_match_constraint]

	#geo_match_constraint: {
		type:  string
		value: string
	}
}
