package res

#aws_lambda_layer_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_layer_version")
	arn?:         string
	code_sha256?: string
	compatible_architectures?: [...string]
	compatible_runtimes?: [...string]
	created_date?:                string
	description?:                 string
	filename?:                    string
	id?:                          string
	layer_arn?:                   string
	layer_name!:                  string
	license_info?:                string
	s3_bucket?:                   string
	s3_key?:                      string
	s3_object_version?:           string
	signing_job_arn?:             string
	signing_profile_version_arn?: string
	skip_destroy?:                bool
	source_code_hash?:            string
	source_code_size?:            number
	version?:                     string
}
