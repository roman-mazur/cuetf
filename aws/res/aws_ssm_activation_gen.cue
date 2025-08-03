package res

#aws_ssm_activation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_activation")
	close({
		activation_code?:    string
		description?:        string
		expiration_date?:    string
		expired?:            bool
		iam_role!:           string
		id?:                 string
		name?:               string
		region?:             string
		registration_count?: number
		registration_limit?: number
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
