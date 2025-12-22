package res

#github_repository_topics: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository_topics")
	close({
		id?: string

		// The name of the repository. The name is not case sensitive.
		repository!: string

		// An array of topics to add to the repository. Pass one or more
		// topics to replace the set of existing topics. Send an empty
		// array ([]) to clear all topics from the repository. Note:
		// Topic names cannot contain uppercase letters.
		topics!: [...string]
	})
}
