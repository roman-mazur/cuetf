package res

#google_storage_object_access_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_object_access_control")
	close({
		// The name of the bucket.
		bucket!: string

		// The domain associated with the entity.
		domain?: string

		// The email address associated with the entity.
		email?: string

		// The entity holding the permission, in one of the following
		// forms:
		// * user-{{userId}}
		// * user-{{email}} (such as "user-liz@example.com")
		// * group-{{groupId}}
		// * group-{{email}} (such as "group-example@googlegroups.com")
		// * domain-{{domain}} (such as "domain-example.com")
		// * project-team-{{projectId}}
		// * allUsers
		// * allAuthenticatedUsers
		entity!: string

		// The ID for the entity
		entity_id?: string

		// The content generation of the object, if applied to an object.
		generation?: number
		id?:         string
		timeouts?:   #timeouts

		// The name of the object to apply the access control to.
		object!: string

		// The project team associated with the entity
		project_team?: [...close({
			project_number?: string
			team?:           string
		})]

		// The access permission for the entity. Possible values:
		// ["OWNER", "READER"]
		role!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
