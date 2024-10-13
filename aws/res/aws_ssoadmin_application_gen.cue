package res

#aws_ssoadmin_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_application")
	application_account?:      string
	application_arn?:          string
	application_provider_arn!: string
	client_token?:             string
	description?:              string
	id?:                       string
	instance_arn!:             string
	name!:                     string
	status?:                   string
	tags?: [string]: string
	tags_all?: [string]: string
	portal_options?: #portal_options | [...#portal_options]

	#portal_options: {
		visibility?: string
		sign_in_options?: #portal_options.#sign_in_options | [...#portal_options.#sign_in_options]

		#sign_in_options: {
			application_url?: string
			origin!:          string
		}
	}
}
