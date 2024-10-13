package res

#aws_auditmanager_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_auditmanager_framework")
	arn?:             string
	compliance_type?: string
	description?:     string
	framework_type?:  string
	id?:              string
	name!:            string
	tags?: [string]: string
	tags_all?: [string]: string
	control_sets?: #control_sets | [...#control_sets]

	#control_sets: {
		id?:   string
		name!: string
		controls?: #control_sets.#controls | [...#control_sets.#controls]

		#controls: id!: string
	}
}
