package data

#aws_pricing_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pricing_product")
	close({
		id?:           string
		result?:       string
		service_code!: string
		filters?: matchN(1, [#filters, [_, ...] & [...#filters]])
	})

	#filters: close({
		field!: string
		value!: string
	})
}
