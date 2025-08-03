package res

#aws_quicksight_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_namespace")
	close({
		arn?:             string
		timeouts?:        #timeouts
		aws_account_id?:  string
		capacity_region?: string
		creation_status?: string
		id?:              string
		identity_store?:  string
		namespace!:       string
		region?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
