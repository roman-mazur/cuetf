package res

#aws_iot_billing_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_billing_group")
	close({
		arn?: string
		properties?: matchN(1, [#properties, [...#properties]])
		id?: string
		metadata?: [...close({
			creation_date?: string
		})]
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: number
	})

	#properties: close({
		description?: string
	})
}
