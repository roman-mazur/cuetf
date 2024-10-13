package res

#aws_ssoadmin_instance_access_control_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssoadmin_instance_access_control_attributes")
	id?:            string
	instance_arn!:  string
	status?:        string
	status_reason?: string
	attribute?: #attribute | [_, ...] & [...#attribute]

	#attribute: {
		key!: string
		value?: #attribute.#value | [_, ...] & [...#attribute.#value]

		#value: source!: [...string]
	}
}
