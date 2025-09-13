package res

import "list"

#google_kms_key_ring_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_key_ring_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:        string
		id?:          string
		key_ring_id!: string
		members!: [...string]
		role!: string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
