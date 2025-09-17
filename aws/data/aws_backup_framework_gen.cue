package data

#aws_backup_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_framework")
	close({
		arn?: string
		control?: [...close({
			input_parameter?: [...close({
				name?:  string
				value?: string
			})]
			name?: string
			scope?: [...close({
				compliance_resource_ids?: [...string]
				compliance_resource_types?: [...string]
				tags?: [string]: string
			})]
		})]
		creation_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		deployment_status?: string
		description?:       string
		id?:                string
		name!:              string
		status?:            string
		tags?: [string]: string
	})
}
