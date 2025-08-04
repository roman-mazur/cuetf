package res

#aws_wafregional_ipset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_ipset")
	close({
		ip_set_descriptor?: matchN(1, [#ip_set_descriptor, [...#ip_set_descriptor]])
		arn?:    string
		id?:     string
		name!:   string
		region?: string
	})

	#ip_set_descriptor: close({
		type!:  string
		value!: string
	})
}
