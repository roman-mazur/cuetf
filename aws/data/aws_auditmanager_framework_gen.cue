package data

#aws_auditmanager_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_framework")
	close({
		arn?:             string
		compliance_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		control_sets?: [...close({
			controls?: [...close({
				id?: string
			})]
			id?:   string
			name?: string
		})]
		description?:    string
		framework_type!: string
		id?:             string
		name!:           string
		tags?: [string]: string
	})
}
