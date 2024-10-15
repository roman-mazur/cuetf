package res

#aws_wafregional_geo_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_geo_match_set")
	id?:   string
	name!: string
	geo_match_constraint?: #geo_match_constraint | [...#geo_match_constraint]

	#geo_match_constraint: {
		type!:  string
		value!: string
	}
}
