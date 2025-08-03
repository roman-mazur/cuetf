package res

#aws_ram_resource_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ram_resource_share")
	close({
		allow_external_principals?: bool
		timeouts?:                  #timeouts
		arn?:                       string
		id?:                        string
		name!:                      string
		permission_arns?: [...string]
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
