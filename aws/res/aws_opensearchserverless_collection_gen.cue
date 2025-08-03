package res

#aws_opensearchserverless_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_collection")
	close({
		arn?:                 string
		collection_endpoint?: string
		dashboard_endpoint?:  string
		description?:         string
		id?:                  string
		kms_key_arn?:         string
		name!:                string
		region?:              string
		timeouts?:            #timeouts
		standby_replicas?:    string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
