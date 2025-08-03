package res

import "list"

#aws_elastictranscoder_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastictranscoder_pipeline")
	close({
		arn?:             string
		aws_kms_key_arn?: string
		content_config?: matchN(1, [#content_config, list.MaxItems(1) & [...#content_config]])
		content_config_permissions?: matchN(1, [#content_config_permissions, [...#content_config_permissions]])
		notifications?: matchN(1, [#notifications, list.MaxItems(1) & [...#notifications]])
		thumbnail_config?: matchN(1, [#thumbnail_config, list.MaxItems(1) & [...#thumbnail_config]])
		id?:           string
		input_bucket!: string
		name?:         string
		thumbnail_config_permissions?: matchN(1, [#thumbnail_config_permissions, [...#thumbnail_config_permissions]])
		output_bucket?: string
		region?:        string
		role!:          string
	})

	#content_config: close({
		bucket?:        string
		storage_class?: string
	})

	#content_config_permissions: close({
		access?: [...string]
		grantee?:      string
		grantee_type?: string
	})

	#notifications: close({
		completed?:   string
		error?:       string
		progressing?: string
		warning?:     string
	})

	#thumbnail_config: close({
		bucket?:        string
		storage_class?: string
	})

	#thumbnail_config_permissions: close({
		access?: [...string]
		grantee?:      string
		grantee_type?: string
	})
}
