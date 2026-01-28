package res

#aws_waf_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_waf_ipset")
	close({
		ip_set_descriptors?: matchN(1, [#ip_set_descriptors, [...#ip_set_descriptors]])
		arn?:  string
		id?:   string
		name!: string
	})

	#ip_set_descriptors: close({
		type!:  string
		value!: string
	})
}
