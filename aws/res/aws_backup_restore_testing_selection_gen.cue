package res

#aws_backup_restore_testing_selection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_restore_testing_selection")
	iam_role_arn!: string
	name!:         string
	protected_resource_arns?: [...string]
	protected_resource_type!: string
	restore_metadata_overrides?: [string]: string
	restore_testing_plan_name!: string
	validation_window_hours?:   number
	protected_resource_conditions?: #protected_resource_conditions | [...#protected_resource_conditions]

	#protected_resource_conditions: {
		string_equals?: #protected_resource_conditions.#string_equals | [...#protected_resource_conditions.#string_equals]
		string_not_equals?: #protected_resource_conditions.#string_not_equals | [...#protected_resource_conditions.#string_not_equals]

		#string_equals: {
			key!:   string
			value!: string
		}

		#string_not_equals: {
			key!:   string
			value!: string
		}
	}
}
