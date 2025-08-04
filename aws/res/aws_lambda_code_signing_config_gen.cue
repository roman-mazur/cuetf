package res

import "list"

#aws_lambda_code_signing_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_code_signing_config")
	close({
		allowed_publishers?: matchN(1, [#allowed_publishers, list.MaxItems(1) & [_, ...] & [...#allowed_publishers]])
		arn?:           string
		config_id?:     string
		description?:   string
		id?:            string
		last_modified?: string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
		policies?: matchN(1, [#policies, list.MaxItems(1) & [...#policies]])
	})

	#allowed_publishers: close({
		signing_profile_version_arns!: [...string]
	})

	#policies: close({
		untrusted_artifact_on_deployment!: string
	})
}
