package res

#aws_waf_geo_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_geo_match_set")
	close({
		geo_match_constraint?: matchN(1, [#geo_match_constraint, [...#geo_match_constraint]])
		arn?:  string
		id?:   string
		name!: string
	})

	#geo_match_constraint: close({
		type!:  string
		value!: string
	})
}
