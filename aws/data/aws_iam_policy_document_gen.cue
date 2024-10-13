package data

#aws_iam_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iam_policy_document")
	id?:            string
	json?:          string
	minified_json?: string
	override_policy_documents?: [...string]
	policy_id?: string
	source_policy_documents?: [...string]
	version?: string
	statement?: #statement | [...#statement]

	#statement: {
		actions?: [...string]
		effect?: string
		not_actions?: [...string]
		not_resources?: [...string]
		resources?: [...string]
		sid?: string
		condition?: #statement.#condition | [...#statement.#condition]
		not_principals?: #statement.#not_principals | [...#statement.#not_principals]
		principals?: #statement.#principals | [...#statement.#principals]

		#condition: {
			test!: string
			values!: [...string]
			variable!: string
		}

		#not_principals: {
			identifiers!: [...string]
			type!: string
		}

		#principals: {
			identifiers!: [...string]
			type!: string
		}
	}
}
