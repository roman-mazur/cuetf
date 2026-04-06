package res

#scaleway_iam_ssh_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_ssh_key")
	close({
		// The date and time of the creation of the iam SSH Key
		created_at?: string

		// The SSH key status
		disabled?: bool

		// The fingerprint of the iam SSH key
		fingerprint?: string
		id?:          string

		// The name of the iam SSH key
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The public SSH key
		public_key!: string

		// The date and time of the last update of the iam SSH Key
		updated_at?: string
	})
}
