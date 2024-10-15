package res

import "list"

#aws_kendra_experience: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_experience")
	arn?:         string
	description?: string
	endpoints?: [...{
		endpoint?:      string
		endpoint_type?: string
	}]
	experience_id?: string
	id?:            string
	index_id!:      string
	name!:          string
	role_arn!:      string
	status?:        string
	configuration?: #configuration | list.MaxItems(1) & [...#configuration]
	timeouts?: #timeouts

	#configuration: {
		content_source_configuration?: #configuration.#content_source_configuration | list.MaxItems(1) & [...#configuration.#content_source_configuration]
		user_identity_configuration?: #configuration.#user_identity_configuration | list.MaxItems(1) & [...#configuration.#user_identity_configuration]

		#content_source_configuration: {
			data_source_ids?: [...string]
			direct_put_content?: bool
			faq_ids?: [...string]
		}

		#user_identity_configuration: identity_attribute_name!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
