package data

#aws_internet_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_internet_gateway")
	close({
		arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		attachments?: [...close({
			state?:  string
			vpc_id?: string
		})]
		id?:                  string
		internet_gateway_id?: string
		owner_id?:            string
		region?:              string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
