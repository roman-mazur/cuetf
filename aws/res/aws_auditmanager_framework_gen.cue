package res

#aws_auditmanager_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_framework")
	close({
		arn?:             string
		compliance_type?: string
		description?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		framework_type?: string
		id?:             string
		name!:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		control_sets?: matchN(1, [#control_sets, [...#control_sets]])
	})

	#control_sets: close({
		controls?: matchN(1, [_#defs."/$defs/control_sets/$defs/controls", [..._#defs."/$defs/control_sets/$defs/controls"]])
		id?:   string
		name!: string
	})

	_#defs: "/$defs/control_sets/$defs/controls": close({
		id!: string
	})
}
