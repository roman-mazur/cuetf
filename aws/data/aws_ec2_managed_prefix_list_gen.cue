package data

#aws_ec2_managed_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_managed_prefix_list")
	close({
		address_family?: string
		arn?:            string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		entries?: [...close({
			cidr?:        string
			description?: string
		})]
		id?:          string
		max_entries?: number
		name?:        string
		owner_id?:    string
		region?:      string
		tags?: [string]: string
		version?: number
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
