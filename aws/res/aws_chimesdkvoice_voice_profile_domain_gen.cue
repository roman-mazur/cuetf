package res

import "list"

#aws_chimesdkvoice_voice_profile_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkvoice_voice_profile_domain")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	server_side_encryption_configuration?: #server_side_encryption_configuration | list.MaxItems(1) & [_, ...] & [...#server_side_encryption_configuration]
	timeouts?: #timeouts

	#server_side_encryption_configuration: kms_key_arn!: string

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
