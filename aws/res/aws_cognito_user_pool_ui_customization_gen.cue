package res

#aws_cognito_user_pool_ui_customization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cognito_user_pool_ui_customization")
	client_id?:          string
	creation_date?:      string
	css?:                string
	css_version?:        string
	id?:                 string
	image_file?:         string
	image_url?:          string
	last_modified_date?: string
	user_pool_id!:       string
}
