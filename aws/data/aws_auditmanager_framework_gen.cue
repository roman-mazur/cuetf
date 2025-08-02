package data

#aws_auditmanager_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_auditmanager_framework")
	close({
		arn?:             string
		compliance_type?: string
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
		region?:         string
		tags?: [string]: string
	})
}
