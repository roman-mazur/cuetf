package data

#aws_pricing_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pricing_product")
	id?:          string
	result?:      string
	service_code: string
	filters?:     #filters | [_, ...] & [...#filters]

	#filters: {
		field: string
		value: string
	}
}
