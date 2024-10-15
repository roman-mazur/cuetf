package res

#aws_backup_selection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_selection")
	iam_role_arn!: string
	id?:           string
	name!:         string
	not_resources?: [...string]
	plan_id!: string
	resources?: [...string]
	condition?: #condition | [...#condition]
	selection_tag?: #selection_tag | [...#selection_tag]

	#condition: {
		string_equals?: #condition.#string_equals | [...#condition.#string_equals]
		string_like?: #condition.#string_like | [...#condition.#string_like]
		string_not_equals?: #condition.#string_not_equals | [...#condition.#string_not_equals]
		string_not_like?: #condition.#string_not_like | [...#condition.#string_not_like]

		#string_equals: {
			key!:   string
			value!: string
		}

		#string_like: {
			key!:   string
			value!: string
		}

		#string_not_equals: {
			key!:   string
			value!: string
		}

		#string_not_like: {
			key!:   string
			value!: string
		}
	}

	#selection_tag: {
		key!:   string
		type!:  string
		value!: string
	}
}
