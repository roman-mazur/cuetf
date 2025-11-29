package res

import "list"

#google_colab_runtime: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_colab_runtime")
	close({
		// Triggers an upgrade anytime the runtime is started if it is
		// upgradable.
		auto_upgrade?: bool

		// The description of the Runtime.
		description?: string

		// Desired state of the Colab Runtime. Set this field to 'RUNNING'
		// to start the runtime, and 'STOPPED' to stop it.
		desired_state?: string

		// Required. The display name of the Runtime.
		display_name!: string

		// Output only. Timestamp when this NotebookRuntime will be
		// expired.
		expiration_time?: string
		id?:              string

		// Output only. Checks if the NotebookRuntime is upgradable.
		is_upgradable?: bool

		// The location for the resource:
		// https://cloud.google.com/colab/docs/locations
		location!: string

		// The resource name of the Runtime
		name?: string

		// Output only. The type of the notebook runtime.
		notebook_runtime_type?: string
		notebook_runtime_template_ref?: matchN(1, [#notebook_runtime_template_ref, list.MaxItems(1) & [...#notebook_runtime_template_ref]])
		timeouts?: #timeouts
		project?:  string

		// The user email of the NotebookRuntime.
		runtime_user!: string

		// Output only. The state of the runtime.
		state?: string
	})

	#notebook_runtime_template_ref: close({
		// The resource name of the NotebookRuntimeTemplate based on which
		// a NotebookRuntime will be created.
		notebook_runtime_template!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
