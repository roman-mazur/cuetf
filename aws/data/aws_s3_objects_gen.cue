package data

#aws_s3_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_objects")
	close({
		bucket!: string
		common_prefixes?: [...string]
		delimiter?:     string
		encoding_type?: string
		fetch_owner?:   bool
		id?:            string
		keys?: [...string]
		max_keys?: number
		owners?: [...string]
		prefix?:          string
		region?:          string
		request_charged?: string
		request_payer?:   string
		start_after?:     string
	})
}
