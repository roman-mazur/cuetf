package res

#aws_ec2_managed_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_managed_prefix_list")
	close({
		address_family!: string
		entry?: matchN(1, [#entry, [...#entry]])
		arn?:         string
		id?:          string
		max_entries!: number
		name!:        string
		owner_id?:    string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: number
	})

	#entry: close({
		cidr!:        string
		description?: string
	})
}
