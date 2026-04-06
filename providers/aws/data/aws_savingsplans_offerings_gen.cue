package data

#aws_savingsplans_offerings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_savingsplans_offerings")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		currencies?: [...string]
		descriptions?: [...string]
		durations?: [...number]
		offering_ids?: [...string]
		offerings?: [...close({
			currency?:         string
			description?:      string
			duration_seconds?: number
			offering_id?:      string
			operation?:        string
			payment_option?:   string
			plan_type?:        string
			product_types?: [...string]
			properties?: [...close({
				name?:  string
				value?: string
			})]
			service_code?: string
			usage_type?:   string
		})]
		operations?: [...string]
		payment_options?: [...string]
		plan_types?: [...string]
		product_type?: string
		service_codes?: [...string]
		usage_types?: [...string]
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
