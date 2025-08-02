package data

#aws_lambda_code_signing_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_code_signing_config")
	close({
		allowed_publishers?: [...close({
			signing_profile_version_arns?: [...string]
		})]
		arn!:           string
		config_id?:     string
		description?:   string
		id?:            string
		last_modified?: string
		policies?: [...close({
			untrusted_artifact_on_deployment?: string
		})]
		region?: string
	})
}
