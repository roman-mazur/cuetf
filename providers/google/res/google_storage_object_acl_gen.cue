package res

#google_storage_object_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_object_acl")
	close({
		bucket!:         string
		id?:             string
		object!:         string
		predefined_acl?: string
		role_entity?: [...string]
	})
}
