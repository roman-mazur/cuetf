package data

#aws_lambda_layer_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lambda_layer_version")
	arn?:                     string
	code_sha256?:             string
	compatible_architecture?: string
	compatible_architectures?: [...string]
	compatible_runtime?: string
	compatible_runtimes?: [...string]
	created_date?:                string
	description?:                 string
	id?:                          string
	layer_arn?:                   string
	layer_name!:                  string
	license_info?:                string
	signing_job_arn?:             string
	signing_profile_version_arn?: string
	source_code_size?:            number
	version?:                     number
}
