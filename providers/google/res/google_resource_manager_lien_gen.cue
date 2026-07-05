package res

google_resource_manager_lien: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_resource_manager_lien")
	close({
		timeouts?: #timeouts

		// Time of creation
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// A system-generated unique identifier for this Lien.
		name?: string

		// A stable, user-visible/meaningful string identifying the origin
		// of the Lien, intended to be inspected programmatically. Maximum length of
		// 200 characters.
		origin!: string

		// A reference to the resource this Lien is attached to.
		// The server will validate the parent against those for which Liens are supported.
		// Since a variety of objects can have Liens against them, you must provide the type
		// prefix (e.g. "projects/my-project-name").
		parent!: string

		// Concise user-visible strings indicating why an action cannot be performed
		// on a resource. Maximum length of 200 characters.
		reason!: string

		// The types of operations which should be blocked as a result of this Lien.
		// Each value should correspond to an IAM permission. The server will validate
		// the permissions against those for which Liens are supported. An empty
		// list is meaningless and will be rejected.
		// e.g. ['resourcemanager.projects.delete']
		restrictions!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
