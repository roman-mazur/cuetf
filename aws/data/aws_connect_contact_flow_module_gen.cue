package data

#aws_connect_contact_flow_module: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_contact_flow_module")
	close({
		arn?:                    string
		contact_flow_module_id?: string
		content?:                string
		description?:            string
		id?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		instance_id!: string
		name?:        string
		state?:       string
		status?:      string
		tags?: [string]: string
	})
}
