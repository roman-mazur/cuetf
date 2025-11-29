package res

#google_tags_tag_value_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_tags_tag_value_iam_policy")
	close({
		etag?:        string
		id?:          string
		policy_data!: string
		tag_value!:   string
	})
}
