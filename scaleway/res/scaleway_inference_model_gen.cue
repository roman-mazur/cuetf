package res

#scaleway_inference_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_inference_model")
	close({
		timeouts?: #timeouts

		// The date and time of the creation of the model
		created_at?: string

		// The description of the model
		description?: string

		// Defines whether the model has an end user license agreement
		has_eula?: bool
		id?:       string

		// The name of the model
		name!: string

		// Supported node types with quantization options and context
		// lengths.
		nodes_support?: [...close({
			node_type_name?: string
			quantization?: [...close({
				allowed?:           bool
				max_context_size?:  number
				quantization_bits?: number
			})]
		})]

		// Size, in bits, of the model parameters
		parameter_size_bits?: number

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// A token or credential used to authenticate when pulling the
		// model from a private or gated source. For example, a Hugging
		// Face access token with read permissions.
		secret?: string

		// A token or credential used to authenticate when pulling the
		// model from a private or gated source in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. For example, a Hugging Face access token with read
		// permissions. `secret_wo` will not be set in the Terraform
		// state. Only one of `secret` or `secret_wo` should be
		// specified.
		secret_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// secret. To update the `secret_wo`, you must also update the
		// `secret_wo_version`.
		secret_wo_version?: number

		// Total size, in bytes, of the model files
		size_bytes?: number

		// The status of the model
		status?: string

		// The tags associated with the deployment
		tags?: [...string]

		// The date and time of the last update of the model
		updated_at?: string

		// The HTTPS URL to the model archive or repository. Typically,
		// this is a Hugging Face repository URL (e.g.,
		// `https://huggingface.co/your-org/your-model`). The URL must be
		// publicly accessible or require a valid secret for
		// authentication.
		url!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
	})
}
