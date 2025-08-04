package data

#aws_lambda_layer_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_layer_version")
	close({
		arn?:                     string
		code_sha256?:             string
		compatible_architecture?: string
		compatible_architectures?: [...string]
		compatible_runtime?: string
		compatible_runtimes?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
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
	})
}
