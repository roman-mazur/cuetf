package res

import "list"

#aws_chimesdkvoice_voice_profile_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkvoice_voice_profile_domain")
	close({
		arn?: string
		server_side_encryption_configuration?: matchN(1, [#server_side_encryption_configuration, list.MaxItems(1) & [_, ...] & [...#server_side_encryption_configuration]])
		timeouts?:    #timeouts
		description?: string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#server_side_encryption_configuration: close({
		kms_key_arn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
