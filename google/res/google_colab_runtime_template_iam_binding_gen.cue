package res

import "list"

#google_colab_runtime_template_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_colab_runtime_template_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:     string
		id?:       string
		location?: string
		members!: [...string]
		project?:          string
		role!:             string
		runtime_template!: string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
