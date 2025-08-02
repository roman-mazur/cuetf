package data

#aws_datazone_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_domain")
	close({
		arn?:                string
		created_at?:         string
		description?:        string
		domain_version?:     string
		id?:                 string
		last_updated_at?:    string
		managed_account_id?: string
		name?:               string
		portal_url?:         string
		region?:             string
		status?:             string
	})
}
