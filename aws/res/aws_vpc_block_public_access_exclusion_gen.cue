package res

#aws_vpc_block_public_access_exclusion: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_block_public_access_exclusion")
	close({
		timeouts?:                        #timeouts
		id?:                              string
		internet_gateway_exclusion_mode!: string
		region?:                          string
		resource_arn?:                    string
		subnet_id?:                       string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
