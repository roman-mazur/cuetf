package data

#aws_ssoadmin_permission_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_permission_set")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		arn?:              string
		created_date?:     string
		description?:      string
		id?:               string
		instance_arn!:     string
		name?:             string
		relay_state?:      string
		session_duration?: string
		tags?: [string]: string
	})
}
