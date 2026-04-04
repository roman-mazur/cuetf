package data

#aws_account_regions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_account_regions")
	close({
		account_id?: string
		region_opt_status_contains?: [...string]
		regions?: [...close({
			region_name?:       string
			region_opt_status?: string
		})]
	})
}
