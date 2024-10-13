package res

import "list"

#aws_elastictranscoder_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elastictranscoder_pipeline")
	arn?:             string
	aws_kms_key_arn?: string
	id?:              string
	input_bucket!:    string
	name?:            string
	output_bucket?:   string
	role!:            string
	content_config?: #content_config | list.MaxItems(1) & [...#content_config]
	content_config_permissions?: #content_config_permissions | [...#content_config_permissions]
	notifications?: #notifications | list.MaxItems(1) & [...#notifications]
	thumbnail_config?: #thumbnail_config | list.MaxItems(1) & [...#thumbnail_config]
	thumbnail_config_permissions?: #thumbnail_config_permissions | [...#thumbnail_config_permissions]

	#content_config: {
		bucket?:        string
		storage_class?: string
	}

	#content_config_permissions: {
		access?: [...string]
		grantee?:      string
		grantee_type?: string
	}

	#notifications: {
		completed?:   string
		error?:       string
		progressing?: string
		warning?:     string
	}

	#thumbnail_config: {
		bucket?:        string
		storage_class?: string
	}

	#thumbnail_config_permissions: {
		access?: [...string]
		grantee?:      string
		grantee_type?: string
	}
}
