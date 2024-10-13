package data

#aws_ssoadmin_application_providers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_application_providers")
	id?: string
	application_providers?: #application_providers | [...#application_providers]

	#application_providers: {
		application_provider_arn?: string
		federation_protocol?:      string
		display_data?: #application_providers.#display_data | [...#application_providers.#display_data]

		#display_data: {
			description?:  string
			display_name?: string
			icon_url?:     string
		}
	}
}
