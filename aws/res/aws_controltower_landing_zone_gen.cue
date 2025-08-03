package res

#aws_controltower_landing_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_controltower_landing_zone")
	close({
		arn?:      string
		timeouts?: #timeouts
		drift_status?: [...close({
			status?: string
		})]
		id?:                       string
		latest_available_version?: string
		manifest_json!:            string
		region?:                   string
		tags?: [string]:     string
		tags_all?: [string]: string
		version!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
