package data

#aws_servicecatalog_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_product")
	close({
		accept_language?:     string
		arn?:                 string
		created_time?:        string
		description?:         string
		distributor?:         string
		has_default_path?:    bool
		id!:                  string
		name?:                string
		owner?:               string
		timeouts?:            #timeouts
		region?:              string
		status?:              string
		support_description?: string
		support_email?:       string
		support_url?:         string
		tags?: [string]: string
		type?: string
	})

	#timeouts: close({
		read?: string
	})
}
