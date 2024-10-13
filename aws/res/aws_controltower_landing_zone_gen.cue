package res

#aws_controltower_landing_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_controltower_landing_zone")
	arn?: string
	drift_status?: [...{
		status?: string
	}]
	id?:                       string
	latest_available_version?: string
	manifest_json!:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	version!:  string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
