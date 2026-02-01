package data

#aws_s3control_access_points: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3control_access_points")
	close({
		access_points?: [...close({
			access_point_arn?:  string
			alias?:             string
			bucket?:            string
			bucket_account_id?: string
			data_source_id?:    string
			data_source_type?:  string
			name?:              string
			network_origin?:    string
			vpc_configuration?: [...close({
				vpc_id?: string
			})]
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		account_id?:       string
		bucket?:           string
		data_source_id?:   string
		data_source_type?: string
	})
}
