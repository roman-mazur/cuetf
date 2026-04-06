package data

#aws_dynamodb_backups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_dynamodb_backups")
	close({
		backup_summaries?: [...close({
			backup_arn?:                string
			backup_creation_date_time?: string
			backup_expiry_date_time?:   string
			backup_name?:               string
			backup_size_bytes?:         number
			backup_status?:             string
			backup_type?:               string
			table_arn?:                 string
			table_id?:                  string
			table_name?:                string
		})]
		backup_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		table_name?:             string
		time_range_lower_bound?: string
		time_range_upper_bound?: string
	})
}
