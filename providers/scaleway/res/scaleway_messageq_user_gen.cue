package res

scaleway_messageq_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_messageq_user")
	close({
		// Deployment on which the user is created
		deployment_id!: string

		// The ID of the MessageQ user, in the `{region}/{deployment_id}/{name}` format.
		id?: string

		// MessageQ user name
		name!: string

		// MessageQ user password. Only one of `password` or `password_wo` should be specified.
		password?: string

		// MessageQ user password in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `password` or `password_wo` should be specified.
		// `password_wo` will not be set in the Terraform state. To update the
		// `password_wo`, you must also update the `password_wo_version`.
		password_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// password. To update the `password_wo`, you must also update the
		// `password_wo_version`.
		password_wo_version?: number

		// The region of the MessageQ deployment.
		region?: string
	})
}
