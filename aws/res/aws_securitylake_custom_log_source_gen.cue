package res

#aws_securitylake_custom_log_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_securitylake_custom_log_source")
	attributes?: [...{
		crawler_arn?:  string
		database_arn?: string
		table_arn?:    string
	}]
	event_classes?: [...string]
	id?: string
	provider_details?: [...{
		location?: string
		role_arn?: string
	}]
	source_name!:    string
	source_version?: string
	configuration?: #configuration | [...#configuration]

	#configuration: {
		crawler_configuration?: #configuration.#crawler_configuration | [...#configuration.#crawler_configuration]
		provider_identity?: #configuration.#provider_identity | [...#configuration.#provider_identity]

		#crawler_configuration: role_arn!: string

		#provider_identity: {
			external_id!: string
			principal!:   string
		}
	}
}
