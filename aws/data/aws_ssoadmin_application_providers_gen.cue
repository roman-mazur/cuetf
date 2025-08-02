package data

#aws_ssoadmin_application_providers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_application_providers")
	close({
		application_providers?: [...close({
			application_provider_arn?: string
			display_data?: [...close({
				description?:  string
				display_name?: string
				icon_url?:     string
			})]
			federation_protocol?: string
		})]
		id?:     string
		region?: string
	})
}
